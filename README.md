## config files

These files contain my personal configuration for using neovim, tmux, zsh and other useful day to day tools.

The best way to use this is to clone the repository to your root folder and then create symbolic links for the relevant files to the relevant folders that they need to be run from. Another option is to use from dropbox instead of home folder and create symbolic links from there.

### Instructions for nvim setup 

(_These instructions are old but still relevant for the most part - will update_)

1. Run the following command to install vim.plug in the autoload directory: `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ 
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vi`
2. Create `.config` folder in root folder
3. Clone repository from git using following command `git clone https://github.com/walkermj/nvim.git`
4. run `nvim` to open up neovim and then run `:PlugInstall` to install all of the plugins referenced in the init.vim file.
5. Close vim and then re open and it should be as specified in init.vim file

## Notes

  * `tmuxconf` should be renamed `.tmux.conf` and placed in root folder
  * `init.vim` and plugins should be placed in `~/.config/nvim`
  * be sure to run `chmod 600 ~/.gel_config` so that only you can view the file contents
