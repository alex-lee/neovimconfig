# Neovim setup notes

Clone this repository into `~/.config/nvim`.

## Neovim python support

The `neovim` package must be installed and available to neovim. The
problem is that things will break when you're in a virtualenv that
doesn't have this package.

There are various ways to work around this. Your best bet is to set up
virtualenvs that are dedicated to neovim (one for Python 2, another for
Python 3), and to specify these in your neovim config.
```
mkvirtualenv -p /path/to/python2 neovim2
pip install neovim jedi
mkvirtualenv -p /path/to/python3 neovim3
pip install neovim jedi
```

Then point neovim to these virtualenvs:
```
let g:python_host_prog = $HOME . '/.virtualenvs/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.virtualenvs/neovim3/bin/python'
```

I'm still waiting for improved goto and virtualenv support. Until then,
I'll continue using vim8 with python-mode for python development.

## Plugin Setup

* Check the list of plugins in `plugins.vim`.
* Be sure to run `:PlugInstall` to install all plugins.
* For vim-go, run `:GoInstallBinaries` or `:GoUpdateBinaries`.
* For nvim-typescript, run `:UpdateRemotePlugins`.

## Suggestions

Install `ag` for use with vim-grepper (`sudo apt-get install
silversearcher-ag` vel sim.).

## References

* [neovim and go](https://medium.com/@ambot/neovim-and-go-8f32e6390f71)
