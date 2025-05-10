# HashiCorp Vault Deployment Template

This repository provides a secure, production-ready template for deploying HashiCorp Vault using Docker, Nomad, or Kubernetes. It supports all major storage backends (Consul, Raft, File, etcd) and follows best security practices.

## Structure

- `docker/` — Docker Compose and config templates
- `nomad/` — Nomad job spec and config templates
- `kubernetes/` — Kubernetes manifests and config templates
- `common/certs/` — Place your TLS certificates here (self-signed by default; replace for production)

## Quick Start

1. **Choose your deployment method:**
   - See `docker/`, `nomad/`, or `kubernetes/` for instructions and templates.
2. **Select your storage backend:**
   - Each config supports File, Raft, Consul, and etcd (see comments in `vault.hcl.example`).
3. **Update TLS certificates:**
   - Use your own CA-signed certs for production. Place them in `common/certs/` or use Kubernetes secrets.
4. **Deploy Vault:**
   - Follow the instructions in the respective directory's README.

## Security Best Practices
- **Always use TLS** in production.
- **Never store unencrypted secrets** in configs or code.
- **Restrict network access** to Vault.
- **Use a secure storage backend** (Raft, Consul, etcd) for production.
- **Rotate keys and certificates** regularly.
- **Audit Vault access** and enable audit logging.

---

This template is intended as a starting point. Review and adapt all configurations to your environment and security requirements. 