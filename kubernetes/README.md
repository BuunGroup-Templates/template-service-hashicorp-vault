# HashiCorp Vault Deployment (Kubernetes)

This directory contains templates for deploying HashiCorp Vault on Kubernetes.

## Features
- Supports all major storage backends: Consul, Raft, File, etcd
- Secure by default: TLS enabled, minimal privileges
- Example configs for each backend

## Usage
1. Copy the example manifest or Helm values for your desired backend.
2. Update certificates in `../common/certs` (self-signed by default; replace for production).
3. Apply manifests with `kubectl apply -f .` or use Helm.

## Security Notes
- Never store unencrypted secrets in configs.
- Always use TLS in production.
- Restrict Vault network access with NetworkPolicies.
- Use a secure storage backend for production (Consul, Raft, etcd).
- Use Kubernetes secrets or external secret stores for sensitive data.

---
See the main README for more details. 