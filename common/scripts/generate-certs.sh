#!/bin/bash
# generate-certs.sh
# Generates self-signed TLS certificates for Vault (for dev/test use only)
# Output: ../certs/vault.crt and ../certs/vault.key
# Usage: ./generate-certs.sh [CN] [DAYS]
#   CN: Common Name (default: localhost)
#   DAYS: Validity in days (default: 365)

set -e

CERT_DIR="$(dirname "$0")/../certs"
CN="${1:-localhost}"
DAYS="${2:-365}"

mkdir -p "$CERT_DIR"

openssl req -x509 -nodes -newkey rsa:4096 \
  -keyout "$CERT_DIR/vault.key" \
  -out "$CERT_DIR/vault.crt" \
  -days "$DAYS" \
  -subj "/CN=$CN" \
  -addext "subjectAltName=DNS:$CN,IP:127.0.0.1"

chmod 600 "$CERT_DIR/vault.key"
echo "Self-signed cert and key generated at $CERT_DIR/vault.crt and $CERT_DIR/vault.key" 