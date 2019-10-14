# dotfile

## gem

```bash
rm ~/.gemrc
ln -s ~/dotfiles/.gemrc ~/.gemrc
```

## zsh

```bash
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

## tig

```bash
rm /usr/local/etc/tigrc
ln -s ~/dotfiles/etc/tigrc /usr/local/etc/tigrc
```

## fish

```bash
# fish config
rm ~/.config/fish/config.fish
ln -s ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
# fisher config
rm ~/.config/fish/fishfile
ln -s ~/dotfiles/.config/fish/fishfile ~/.config/fish/fishfile
# install fisher packages
fisher
```
