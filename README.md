# A sample of a vim configuration

[vim]: http://vim.org

### Introduction
Using [vim] out of the box might be nice for a purist but you sure want some customizing to make your work easier.

vim offers you a lot of settings to change. And even better, there are lots of awesome plugins available to extend the functionality of vim. But keep in mind that sometimes "less is more".

With this collection of configuration files, I tried:

* Not to overwrite standard funtionality of vim.
* To keep `vimrc` small and clean.
* To use vim's standard concepts as much as possible.

I would give me great pleasure if you find solutions for your own config here or use this config as a whole.

### Installation
If you like a system wide configuration, simply put the directory `vimfiles` and the 2 runtime config files `vimrc` and `gvimrc` to a common place that depends on your OS.

Before you go on, **please** make sure you have enough knowledge of manually installing something on your computer. The descriptions in this section are only some examples that are based on the machines I am using. Your installation might be slightly different.

On Windows, install everything **parallel** to the directory where vim itself is installed (i.e. `C:\Program Files (x86)\vim` if vim is installed in `C:\Program Files (x86)\vim\vim74`).

For a UNIX System, it's common to have an environment variable `$VIM` that points to your configuration directory (e.g. `/usr/local/etc/vim`).

In any case, no adaption of the file names or the directory name is required.

### Structure
* Everything that is valid in general is placed in the main config file `vimrc`. Using this file only should work out of the box even on a system with a minimal vim installation.

* Settings that depend on the graphical versions of vim (gvim, MacVim), are stored in the runtime config file `gvimrc`.

* The adaptions for all the plugins that are used here, are placed in `vimfiles/vimrc.plugin.vim`.

* All the stuff that depend on the taste of the user (fonts, colors) or on the project, you are currently working on (path, tags), is located in `vimfiles/after/vimrc.user.vim`. This is the file where you can make every change you like. If you don't like some of the setting of the previous files, overwrite them here.
