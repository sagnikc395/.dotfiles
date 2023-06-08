## .dotfiles

My dotfiles.

- theme:
  - kanagawa theme for both neovim and iterm
- zsh theme:
  - the default one with completions for deno and node.
- tmux:

  - setup tmux as outline here (in the ~/.config/tmux directory):
    - https://github.com/gpakosz/.tmux

![🫡 💪](./baz/becurious.png)

## Complicated part of figuring our lsp and mason.

1. The default mason is setup in ./nvim/lua/sagnikc395/plugins/mason.lua
2. After installing it, installed the require pacakges from the nvim shell as :MasonInstall <name of lsp server>
3. Also add npm i -g <package_name /> for installign with the code completion with nvim treesitter.
4. incase eslint_d is not installed it will throw error in null-ls.lua , so install that with :MasonInstall eslint_d.
5. gtg 👍🏾
