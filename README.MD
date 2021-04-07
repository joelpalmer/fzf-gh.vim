# fzf-gh.vim

![Neovim](https://img.shields.io/badge/editor-Neovim-green?logo=neovim&style=plastic)

Bringing [GitHub CLI](https://cli.github.com/) goodness into Vim with [fzf](https://github.com/junegunn/fzf).

## Installation

Install using [vim-plug](https://github.com/junegunn/vim-plug) or other plugin manager.
Put this in your `init.vim` or `.vimrc`.

```vim
Plug 'joelpalmer/fzf-gh.vim'
```

⚠️  You must have [fzf](https://github.com/junegunn/fzf) and the [GitHub CLI](https://cli.github.com/) installed in order to use this plugin.

<img width="800" alt="Screen-fzf-gh" src="https://user-images.githubusercontent.com/8049061/113742815-9c030000-96c8-11eb-9845-dc18b5a94f8b.png">

## Features

| Command | Description |
|---|---|
| `:PRS` | show all Pull Requests in the current repo. Select one and the contents will be loaded into a new buffer.
| `:PRSR` | show only Pull Requests awaiting your review in the current repo. Select one and the contents will be loaded into a new buffer.  |

## Settings

```vim
" Open PRs on the GitHub website instead of a buffer
" default: 0
let g:fzf_gh_website = 1
```

## License

MIT
