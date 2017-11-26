# su-git

A simple tool to handle multiple git account, using multiple SSH keys.

## Usage

Prior to the first run of su-git, you need to configure which identity file will be used for the current dir:

```bash
git config ssh.identity /path/to/your/private_key
```
Now you can use `su-git` exactly the same way as `git`, having your identity handled automatically.

```bash
su-git push -f
```
