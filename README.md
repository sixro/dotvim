# dotvim
> vim dotfiles

## Summary

  * [Introduction](#intro)
  * [How to install a new plugin](#install-plugin)
  * [Suggested plugins](#suggested-plugins)
  * [Colors](#colors)
  * [Awesome videos](#awesome-videos)


## <a name="intro"></a>Introduction

This repository contains my personal vim configuration.  
I prefer to remove vim configuration from the other repo `dotfiles`, because that one can become a mess rapidly if I have to maintain it for MacOs, Ubuntu, Windows, Cygwin, etc...  
Instead, just the vim configuration is quiet stable between platforms.  
To use it, assuming that you are in your `$HOME` folder, use the following command:
```
    git clone https://github.com/sixro/vim-java-maven/ .vim
```
To install all plugins, go under the `.vim` folder and execute:
```
    git submodule init
    git submodule update
```
To update all plugin:
```
    git submodule update --recursive --remote
```


## <a name="install-plugin"></a>How to install a new plugin

I followed the suggestions found in [this video](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) found on vimcasts.org

Basically, assuming that you are in your `.vim` folder, you have to use the following command:
```
    git submodule add GITREPO bundle/PLUGINNAME
```

I suggest to install in the same way even `vim-pathogen`. The `vimrc` assume that it is installed in that way.


## <a name="suggested-plugins"></a>Suggested plugins

  * [vim-pathogen](https://github.com/tpope/vim-pathogen): to manage multiple plugins
  * [vim-surround](https://github.com/tpope/vim-surround): to "wrap" text objects with characters, brackets, etc...
  * [factorus](https://github.com/apalmer1377/factorus): to allow code refactoring
  * [alternate.vim](https://github.com/compactcode/alternate.vim): add helpers to define/handle alternate buffers
  * [open.vim](https://github.com/compactcode/open.vim): add command usable with `alternate.vim`
  * [ultisnips](https://github.com/SirVer/ultisnips): to create snippet of codes
  * [vim-medic_chalk](https://github.com/ParamagicDev/vim-medic_chalk): an amazing colorscheme


## <a name="colors"></a>Colors

In order to create a `colorscheme` you can run the following command:
```
    :so $VIMRUNTIME/syntax/hitest.vim
```
in order to see all `syntax` that can be highlighted.


## <a name="awesome-videos"></a>Awesome videos

  * [Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) by vimcasts.org
    Shows how to handle plugins and vim configuration files
  * [Vim For Rails Developers](https://youtu.be/9J2OjH8Ao_A) by Ben Orenstein  
    Contains some very good tips on how to use `vim` for Rails development that could be applied also to other languages
  * [Creating vim macros and saving them for later](https://youtu.be/_3L0d8wAm_8) by Ben Orenstein  
    Shows how to create a macro to extract some code in a method (a sort of `BeforeEach` used in `JUnit`)
  * [Productivity Setup with Vimwiki, Taskwarrior and MDwiki: Part 1](https://youtu.be/A1YgbAp5YRc)  
    Show how to use vimwiki to collect personal doc, journaling, checklists, etc...
  * [UltiSnips Screencast - Ep 2 - Creating Basic Snippets](https://youtu.be/f_WQxYgK0Pk) by [Holger Rapp](https://www.youtube.com/channel/UCFVf1QjNTTLaDN_2uAY7_7Q)
    Explain how to create a snippet made using `ultisnips`
  * [More Instantly Better Vim](https://youtu.be/aHm36-na4-4) by Damian Conway at OSCON 2013
    Lots of fun such as the StarWars intro :)

