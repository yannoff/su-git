# su-git

A simple tool to handle multiple git account, using multiple SSH keys.

## Installation

First, clone the project into a temporary directory:

```bash
$ cd /tmp
$ git clone https://github.com/yannoff/su-git.git
```
Then, from inside `su-git` directory, run :

```bash
$ cd su-git
$ make
$ sudo make install
```
**NOTE:** _The_ `make` _step can be skipped, since_ `ssh-box` _image can be pulled at runtime._


Now `su-git` can be called from anywhere on your system.

## Usage

Prior to the first run of `su-git`, you need to configure which identity file will be used for the current dir:

```bash
$ git config ssh.identity /path/to/your/private_key
```
Now you can use `su-git` for `push`/`pull` operations, exactly the same way as `git`, having your identity handled automatically.

**Example:**

1. Use `su-git` for cloning

```bash
$ su-git clone git@github.com:yannoff/su-git.git
```

2. Work locally using `git`

```bash
$ git checkout -b feature/my-awesome-feature
...
$ git add .
$ git commit -m "My commit"
...
```

3. Use `su-git` when pushing your local branch

```bash
$ su-git push -u origin feature/my-awesome-feature
```


## Advanced usage

By default, `su-git` take the user's `known_hosts` list file (`~/.ssh/known_hosts`) for host key checking.

An alternative file can be specified using the `--known-hosts` option, e.g:

```bash
$ su-git --known-hosts ~/special_known_hosts clone git@github.com:yannoff/su-git.git
```


## Note

This project was proudly pushed using [su-git](https://github.com/yannoff/su-git "su-git project").
