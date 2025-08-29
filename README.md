# Vault Unsealer Docker Image

This Docker image runs a simple script to automatically unseal a HashiCorp Vault instance using a provided unseal key.

## Environment Variables

- `VAULT_ADDR` - Required. URL of the Vault server
- `VAULT_UNSEAL_KEY` - Required. Unseal key for Vault
- `CHECK_INTERVAL` - Seconds to wait between checking if Vault is sealed (default: 10)
- `ERROR_DELAY` - Seconds to wait before retrying after an error (default: 5)

## To run:
```
docker run -e VAULT_ADDR="http://vault:8200" \
           -e VAULT_UNSEAL_KEY="your-unseal-key" \
           vault-unsealer
```
