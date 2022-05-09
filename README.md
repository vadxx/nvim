# nvim
Modern and aesthetic configuration of Neovim.

### get latest Neovim
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/.local/bin && mv nvim.appimage ~/.local/bin
ln ~/.local/bin/nvim.appimage ~/.local/bin/nvim
# add it to your fish config: set PATH $HOME/.local/bin $PATH
```

### get this configuration
For `Linux/Unix`:
```bash
# remove old cache
rm -rf ~/.local/share/nvim ~/.cache/nvim \
	~/.config/nvim/plugin/packer_compiled.lua 
# remove old config
rm -rf ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/vadxx/nvim.git ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
For `Windows`:
```powershell
# install Choco before: https://chocolatey.org/install
choco install mingw neovim

# remove old cache and config
rmdir -Recurse -Force $env:LOCALAPPDATA\nvim 
rmdir -Recurse -Force $env:LOCALAPPDATA\nvim-data

git clone https://github.com/wbthomason/packer.nvim\
 "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

git clone https://github.com/vadxx/nvim "$env:LOCALAPPDATA\nvim" --depth 1
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
Note: Check [my other configurations](https://github.com/vadxx/config).


### references
* Based on [brainfucksec/neovim-lua](https://github.com/brainfucksec/neovim-lua)
* Some settings/plugins was taken from [NvChad/NvChad](https://github.com/NvChad/NvChad
* Some ideas was taken from [my old config for Vim](https://github.com/vadxx/vim)
