# fzf-gh.vim

![Neovim](https://img.shields.io/badge/editor-Neovim-green?logo=neovim&style=plastic)

Bringing [GitHub CLI](https://cli.github.com/) goodness into Vim with [fzf](https://github.com/junegunn/fzf).

_*I am mostly transitioning to [telescope](https://github.com/nvim-telescope/telescope.nvim). There are a couple use cases in Vim that I still want FZF for. I will also continue to use FZF in the terminal. See below the settings section for more. I put a ton of work into my FZF + Vim setup. I was dreading doing a bunch of work to move to telescope. But, they made it really easy to make the switch._

## Installation

Install using [vim-plug](https://github.com/junegunn/vim-plug) or other plugin manager.
Put this in your `init.vim` or `.vimrc`.

```vim
Plug 'joelpalmer/fzf-gh.vim'
```

⚠️  You must have [fzf](https://github.com/junegunn/fzf) and the [GitHub CLI](https://cli.github.com/) v.1.8.0+ installed in order to use this plugin.

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



_For similar plugins that are much further along, neovim-only and use [telescope](https://github.com/nvim-telescope/telescope.nvim) instead of [fzf](https://github.com/junegunn/fzf.vim), check out: [octo](https://github.com/pwntester/octo.nvim) and [telescope-github.nvim](https://github.com/nvim-telescope/telescope-github.nvim)_

## License

MIT
