## config files

These files contain my personal configuration for using neovim, tmux, zsh and other useful day to day tools.

The best way to use this is to clone the repository to your root folder and then create symbolic links for the relevant files to the relevant folders that they need to be run from. Another option is to use from dropbox instead of home folder and create symbolic links from there.

### Instructions for nvim setup 

(_These instructions are old but still relevant for the most part - will update_)

1. Run the following command to install vim.plug in the autoload directory: `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ 
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vi`
2. Create `.config` folder in root folder
3. Clone repository from git using following command `git clone https://github.com/walkermj/nvim.git`
4. Rename 'config-files' folder to 'nvim'
5. run `nvim` to open up neovim and then run `:PlugInstall` to install all of the plugins referenced in the init.vim file.
6. Close nvim and then re open and it should be as specified in init.vim file
7. Install *homebrew* as per the following [instructions](https://docs.brew.sh/Installation).
8. Install *tmux* with `brew install tmux`
9. Install *oh-my-zsh* using the instructions from the following site: [https://github.com/ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
10. Install Powerlevel10k (a nice zsh theme) using instructions from the following site: [https://github.com/romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)


## Notes

  * To use Nord theme in iterm, you need to install the NordiTerm colour palette accessible at the following link: [https://www.nordtheme.com/ports](https://www.nordtheme.com/ports)
  * symlink the following files to your root folder: `init.vim`, `.tmux.conf`, `.zshrc`
