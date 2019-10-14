# dotfile

## tigrc

```bash
brew install tig
cp /usr/local/etc/tigrc ~/dotfiles/_tigrc
rm tigrc
ln -s ~/dotfiles/_tigrc  /usr/local/etc/tigrc
```

## fish

```bash
# fish config
ln -s ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
# fisher config
ln -s ~/dotfiles/.config/fish/fishfile ~/.config/fish/fishfile
# install fisher packages
fisher
```
