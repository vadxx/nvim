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
```bash
# remove old cache and config
rm -rf ~/.local/share/nvim ~/.cache/nvim \
	~/.config/nvim/plugin/packer_compiled.lua ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/vadxx/nvim.git ~/.config/nvim
nvim +PackerSync! +qall!
```

### references
* Based on [brainfucksec/neovim-lua](https://github.com/brainfucksec/neovim-lua)
