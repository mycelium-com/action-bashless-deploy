# GitHub Action - Bashless Deploy

GitHub Action (yml) to trigger deploy on remote server(s).

**Supports:** 
- Multiple hosts
- Private key authentication

## Example usage

**Basic Example** 
```yml
- name: Bashless Deploy
  uses: mycelium-com/action-bashless-deploy@master
  with:
    hosts: deployer@example.com
    privateKey: ${{ secrets.DEPLOYER_SSH_KEY }}
```

## Inputs

**`command`**:
Command(s) to execute on the remote server.

**`hosts`**: 
Hostname or IP address of the remote server(s). Separate multiple servers with a blank space.
Example: "user@mydomain.com:22 user@otherdomain.com:2222"

**`privateKey`**: The private key (id_rsa) content for authenticating to the SSH server(s). 
Recommended to store it as a GitHub Secret.

## Outputs

The output from the commands ran on the remote server(s).