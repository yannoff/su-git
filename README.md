# su-git

A simple tool to handle multiple git accounts, using multiple SSH keys.

## The reason

I ran into the problem when having to collaborate on 2 distincts `github` accounts simultaneously: my own account and the one I was running for my organization.

Here is the pitfall: each SSH key can be associated with one and **only** one account. 

Unfortunately, `git` automatically takes the default key (typically `$HOME/.ssh/id_rsa`) for granted.

So creating a fresh new SSH key (let's say `$HOME/.ssh/id_rsa2`) and adding the corresponding public key to the repository was not enough to solve the problem. 

Indeed, what `git` lacks is an option (like `--identity` on `ssh` command) to specify which private key should be used.

_And here comes **su-git**!_

## Prerequisites

The script is designed to be run on Linux and any other Unix environments.

Additionally, the following packages are necessary for `su-git`:
- `bash`
- `docker`

## Installation

First, clone the project into a temporary directory:

```bash
$ cd /tmp
$ git clone https://github.com/yannoff/su-git.git
```
Then, go inside `su-git` directory, 

```bash
$ cd su-git
```

then run:

```bash
$ make
$ sudo make install
```
> **NOTE:** _The_ `make` _step can be skipped, since the docker image used by su-git can be pulled at runtime._


Now `su-git` can be called from anywhere on your system.

## Usage

Prior to the first run of `su-git`, you need to configure which identity file will be used for the current dir:


```bash
$ git config ssh.identity /path/to/your/private_key
```

> **NOTE:** `su-git` takes advantage of the powerful `git-config` engine to store its `ssh.identity` option. 
_This means you can configure a global setting for your private key, and override it on a per-project level, as you would do for any other regular git configuration value._

Now you can use `su-git` for `push`/`pull` operations, exactly the same way as `git`, having your identity handled automatically.

**Example:**

1. Use `su-git` for cloning

```bash
$ su-git clone --identity ~/.ssh/your_rsa git@github.com:dummy/my-project.git
```

> **NOTE:** When cloning, there is no `.git` folder in the current directory, so `git config` cannot be used here, even if a global setting exists for `ssh.identity`.

2. Configure your identity file from inside the working dir

```bash
$ cd my-project
$ git config ssh.identity ~/.ssh/your_rsa
```

3. Work locally using `git`

```bash
$ git checkout -b feature/my-awesome-feature
...
$ git add .
$ git commit -m "My commit"
...
```

4. Use `su-git` when pushing your local branch

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

## Issues

Every project is perfectible, [suggestions are welcome](https://github.com/yannoff/su-git/issues)!

Feel free to [report any issue](https://github.com/yannoff/su-git/issues) you would encounter.
