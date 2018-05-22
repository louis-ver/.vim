# Vim configuration

## To use this configuration on a clean Vim install:

```
cd ~
git clone https://github.com/louis-ver/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

## To add plugins to `bundle` and have them behave as submodules:

```
git submodule add http://github.com/user/plugin.git bundle/plugin
```

## Upgrading a plugin bundle

If you want to refresh a plugin that has been updated, run the following command:
```
cd ~/.vim/bundle/plugin
git pull origin master
```

To update all plugins, run this command from the root of all submodule directories:
```
git submodule foreach git pull origin master
```
