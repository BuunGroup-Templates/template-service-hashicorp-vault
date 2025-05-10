# Scripts for Vault Deployment

This directory contains utility scripts for setting up HashiCorp Vault deployments.

## generate-certs.sh

Generates self-signed TLS certificates for Vault (for development or testing only).

### Usage
```sh
./generate-certs.sh [CN] [DAYS]
```
- `CN`: Common Name for the certificate (default: `localhost`)
- `DAYS`: Validity period in days (default: `365`)

The script outputs `vault.crt` and `vault.key` to `../certs/`.

**Note:** For production, use certificates signed by a trusted CA. 