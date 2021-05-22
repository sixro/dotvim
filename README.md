# dotvim
> vim dotfiles

## Summary

  * [Introduction](#intro)
  * [How to install a new plugin](#install-plugin)
  * [Suggested plugins](#suggested-plugins)


## <a name="intro"></a>Introduction

This repository contains my personal vim configuration.  
I prefer to remove vim configuration from the other repo `dotfiles`, because that one can become a mess rapidly if I have to maintain it for MacOs, Ubuntu, Windows, Cygwin, etc...  
Instead, just the vim configuration is quiet stable between platforms.  
To use it, assuming that you are in your `$HOME` folder, use the following command:
```
    git clone https://github.com/sixro/vim-java-maven/ .vim
```


## <a name="install-plugin"></a>How to install a new plugin

I followed the suggestions found in [this video](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) found on vimcasts.org

Basically, assuming that you are in your `.vim` folder, you have to use the following command:
```
    git submodule add GITREPO bundle/PLUGINNAME
```

I suggest to install in the same way even `vim-pathogen`. The `vimrc` assume that it is installed in that way.


## <a name="suggested-plugins"></a>Suggested plugins

  * [vim-pathogen](https://github.com/tpope/vim-pathogen)
  * [vim-surround](https://github.com/tpope/vim-surround)
  * [factorus](https://github.com/apalmer1377/factorus)
