## nvim-mac

Configuration for nvim 


### Instructions for setup in unix environment

1. Run the following command to install vim.plug in the autoload directory: `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ 
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vi`
2. Create `.config` folder in root folder
3. Clone repository from git using following command `git clone https://github.com/walkermj/nvim.git`
4. run `nvim` to open up neovim and then run `:PlugInstall` to install all of the plugins referenced in the init.vim file.
5. Close vim and then re open and it should be as specified in init.vim file

## Other info

  * `tmuxconf` should be renamed `.tmux.conf` and placed in root folder
  * `init.vim` and plugins should be placed in `~/.config/nvim`
