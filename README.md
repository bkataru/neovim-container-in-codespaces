# neovim container in codespaces
template to get up and running with neovim (w/ nvchad) using docker compose in github codespaces

> built out of pure frustration over the bloat and sluggishness of VSCode extensions. Neovim and its plugin ecosystem is way faster and lighter imho

the build scripts and tools in this template configuration will use docker compose to spin up an alpine-based docker container containing a neovim installation that is configured with the base NvChad config.

## setup

first install a nerd font for NvChad. In this template, I'm using the FiraCode Nerd Font but you can modify the `font.sh` bash script to install the font of your liking. 

```bash
$ make install-font
```

## start

type

```bash
$ make start
```

in order to

1. build the docker image
2. create the container
3. start the container
4. `exec` into the container via a `fish` session

after the container is up and running for the first time and you've `exec`ed into it, type

```bash
$ nvim
```

to enter neovim. Then, run

```vim
:Lazy sync
```

```vim
:MasonInstallAll
```

to have 

1. the `Lazy` plugin manager refresh and update all plugins
2. the `Mason` system dependency manager plugin install any missing system dependencies that are required for neovim

## stop

first, make sure you've exited out the container by typing

```bash
$ exit
```

then, type

```bash
$ make stop
```

in order to

1. stop the container
2. remove the container
3. remove the built docker image

alternatively, type

```bash
$ docker compose down
```

if you just want to stop and remove the container but don't want to remove the built docker image (useful when you don't want to rebuild the entire image on each `make start`)

## `exec`ing and `exit`ing

after you've started and configured the container for the first time, you can move between the codespace environment and the running container environment seamlessly:

- you can `exec` into the already-running container again by just typing the same `make start` instruction mentioned before.
- you can `exit` out of the running container by just typing `exit` as mentioned before.
