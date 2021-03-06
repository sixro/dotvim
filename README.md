# dotvim
> vim dotfiles

## Summary

  * [Introduction](#intro)
  * [How to install a new plugin](#install-plugin)
  * [Suggested plugins](#suggested-plugins)
  * [Colors](#colors)
  * [Resources online](#resources-online)
    * [Articles](#articles)
    * [Videos](#videos)
	  * [UltiSnips](#ultisnips)


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

## <a name="resources-online"></a>Resources online

### <a name="articles"></a>Articles

  * [Follow my Leader](http://vimcasts.org/blog/2014/02/follow-my-leader/) by vimcasts.org  
    Shows that sometimes, instead of using mappings on <Leader> key, you can use operators
	and motions as keys of your plugins. There is also an interesting article where [Tim Pope](https://github.com/tpope/)
	discuss this topic with [Andrew Radev](https://github.com/AndrewRadev)


### <a name="videos"></a>Videos

All videos found on the following websites are very good:
  * [vimcasts.org](http://vimcasts.org/episodes/page/8/)
  * [Vim](https://www.youtube.com/playlist?list=PLy7Kah3WzqrEjsuvhT46fr28Q11oa5ZoI) by [TheFrugalComputerGuy](https://www.youtube.com/user/TheFrugalComputerGuy)


Other videos that I liked a lot:

  * [Synchronizing plugins with git submodules and pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) by vimcasts.org  
    Shows how to handle plugins and vim configuration files
  * [An introduction to vspec](http://vimcasts.org/episodes/an-introduction-to-vspec/) by vimcasts.org  
    An introduction to [Vspec](https://github.com/kana/vim-vspec) to make tests on Vim scripts
  * [Project-wide find and replace](http://vimcasts.org/episodes/project-wide-find-and-replace/) by vimcasts.org  
    Shows how to use `substitute`, `argdo`, `vimgrep` and an utility `Qargs` to update the `args` with files
	matched by `vimgrep`
  * [Vim (09) - Substitute (Search and Replace)](https://youtu.be/9Sodnanx_yI?t=323) by TheFrugalComputerGuy  
    At that time of the video, he explains how to ask for a confirm during a search and replace
  * [Search multiple files with :vimgrep](http://vimcasts.org/episodes/search-multiple-files-with-vimgrep/) by vimcasts.org  
    Shows how to use `vimgrep` and suggests for larger projects to use different tools
  * [The file explorer](http://vimcasts.org/episodes/the-file-explorer/) by vimcasts.org  
    A video about the `netrw` file explorer available in every vim installation
  * [Testing compiler plugins](https://youtu.be/jaFVNdSJkFI) by [Greg Hurrell](https://www.youtube.com/channel/UCXPHFM88IlFn68OmLwtPmZA)  
    Shows how to write a `compiler` plugin setting up a `makeprg` and `errorformat` and testing it
  * [Vim For Rails Developers](https://youtu.be/9J2OjH8Ao_A) by Ben Orenstein  
    Contains some very good tips on how to use `vim` for Rails development that could be applied also to other languages
  * [Creating vim macros and saving them for later](https://youtu.be/_3L0d8wAm_8) by Ben Orenstein  
    Shows how to create a macro to extract some code in a method (a sort of `BeforeEach` used in `JUnit`)
  * [Productivity Setup with Vimwiki, Taskwarrior and MDwiki: Part 1](https://youtu.be/A1YgbAp5YRc)  
    Show how to use vimwiki to collect personal doc, journaling, checklists, etc...
  * [More Instantly Better Vim](https://youtu.be/aHm36-na4-4) by Damian Conway at OSCON 2013  
    Lots of fun such as the StarWars intro :)
  * [A Vim Environment For Perl Developers](https://youtu.be/oka4wcsrg0c) by Damian Conway at Perl Conference 2017  
    Shows how he wrote some macros, scripts, etc... to work on Perl. He is the 1st I have seen mentioning a refactor script (he made it in Perl)
  * [Keynote: A Simple Matter Of Programming](https://youtu.be/fVnmYzJfy5s) by Damian Conway at a Perl Conference  
    Shows how he wrote a plugin to refactor, highlight code, etc... because all others IDE did
	it not perfectly
  * [Let's Play with Vanilla Vim](https://youtu.be/Qn5XdjrRptU) by Hezby Muhammad at vim-jp  
    A very good recap on how to use Vanilla vim only
  * [Let Vim Do the Typing](https://youtu.be/3TX3kV3TICU) by George Brocklehurst 
    A presentation on various topics. I liked the idea of staying as much as you can in normal mode


#### <a name="ultisnips"></a>UltiSnips

  * [Meet UltiSnips](http://vimcasts.org/episodes/meet-ultisnips/) by vimcasts.org  
    Show how to setup your 1st snippet with `UltiSnips`
  * [UltiSnips Screencast - Ep 2 - Creating Basic Snippets](https://youtu.be/f_WQxYgK0Pk) by [Holger Rapp](https://www.youtube.com/channel/UCFVf1QjNTTLaDN_2uAY7_7Q)  
    Explain how to create a snippet made using `UltiSnips`
  * [Using Python interpolation in UltiSnips snippets](http://vimcasts.org/episodes/ultisnips-python-interpolation/) by vimcasts.org  
	Shows how to use python interpolation
  * [Using selected text in UltiSnips snippets](http://vimcasts.org/episodes/ultisnips-visual-placeholder/) by vimcasts.org  
    Shows advanced usages of `UltiSnips` with *visual blocks* using the `${VISUAL}` statement
