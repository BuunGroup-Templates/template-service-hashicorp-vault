# HashiCorp Vault Deployment (Nomad)

This directory contains templates for deploying HashiCorp Vault using HashiCorp Nomad.

## Features
- Supports all major storage backends: Consul, Raft, File, etcd
- Secure by default: TLS enabled, minimal privileges
- Example configs for each backend

## Usage
1. Copy the example config for your desired backend.
2. Update certificates in `../common/certs` (self-signed by default; replace for production).
3. Run `nomad job run vault.nomad`.

## Security Notes
- Never store unencrypted secrets in configs.
- Always use TLS in production.
- Restrict Vault network access.
- Use a secure storage backend for production (Consul, Raft, etcd).

---
See the main README for more details. 