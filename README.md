# su-git

A simple tool to handle multiple git account, using multiple SSH keys.

## Installation

First, clone the project into a temporary directory:

```bash
[/tmp]$ git clone https://github.com/yannoff/su-git.git
```
Then, from inside `su-git` directory, run :

```bash
[/tmp]$ cd su-git
[/tmp/su-git]$ sudo make install
```

Now `su-git` can be called from anywhere on your system.

## Usage

Prior to the first run of `su-git`, you need to configure which identity file will be used for the current dir:

```bash
git config ssh.identity /path/to/your/private_key
```
Now you can use `su-git` exactly the same way as `git`, having your identity handled automatically.

```bash
su-git push -f
```

## Note

This project was proudly pushed using [su-git](https://github.com/yannoff/su-git "su-git project").
