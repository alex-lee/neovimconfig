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

## Plugin setup

* Check the list of plugins in `plugins.vim`.
* Be sure to run `:PlugInstall` to install all plugins.
* For vim-go, run `:GoInstallBinaries` or `:GoUpdateBinaries`.

### Elm setup notes

See [elm-tooling/elm-vim](https://github.com/elm-tooling/elm-vim).

### Go setup notes

See [vim as a Go IDE](https://octetz.com/posts/vim-as-go-ide).

Be sure to install [golangci-lint](https://github.com/golangci/golangci-lint).

### Rust setup notes

If running the stable toolchain, you probably want to add the following:
```
$ rustup component add rustfmt-preview
$ rustup component add rls-preview rust-analysis rust-src
```

Also install `racer`:
```
$ cargo install racer
```

### Javascript/TypeScript setup notes

```
$ yarn global add typescript

# Then in nvim:
:CocInstall coc-tsserver coc-eslint coc-json coc-css
```

See also this [guide to modern Web Development with
(Neo)vim][neovim-web-guide].

[neovim-web-guide]: https://www.freecodecamp.org/news/a-guide-to-modern-web-development-with-neo-vim-333f7efbf8e2/

## Suggestions

Install `ag` for use with vim-grepper (`sudo apt-get install
silversearcher-ag` vel sim.).
