# A sample of a vim configuration

[vim]: http://vim.org

### Introduction
With this collection of configuration files, I tried:

* Not to overwrite standard functionality of vim.
* To keep `vimrc` small and clean.
* To use vim's standard concepts as much as possible.

It would give me great pleasure if you find solutions for your own config here or use this config as a whole.

### Structure
* Everything that is valid in general is placed in the main config file `vimrc`. Using this file only should work out of the box even on a system with a minimal vim installation but of course without any plugins installed.

* Settings that depend on the graphical versions of vim (gvim, MacVim), are stored in the runtime config file `gvimrc`.

* The adaptions for all the plugins that are used here, are placed in `vimfiles/vimrc.plugin.vim`.

* All the stuff that depend on the taste of the user (fonts, colors) or on the project, you are currently working on (path, tags), is located in `vimfiles/after/vimrc.user.vim`. This is the file where you can make every change you like. If you don't like some of the setting of the previous files, overwrite them here.
