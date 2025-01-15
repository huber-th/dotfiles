# My ZSH configuration

## Installation

The ZSH configuration can be installed by running the `bootstrap` script.

The installation requires a file `~/.zsh.env` to be created which defines the
`DOTFILES` env variable to point to the doftiles repository folder.

Create the file `~/.zsh.env` with the following content:
```zsh
export DOTFILES=<path_to_cloned_repo>
```

Now run the `bootstrap` script to setup all required symlinks.

```zsh
./bootstrap
```
