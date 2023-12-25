## install emacs
install eamcs 29plus
on mac: brew install emacs-plus@29 --with-native-comp --with-modern-doom3-icon --with-xwidgets --with-no-frame-refocus --with-modern-pen-icon

## install doom 
* https://github.com/hlissner/doom-emacs/blob/develop/docs/getting_started.org
* git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d && ~/.emacs.d/bin/doom install
* copy files in doom-config to .doom/ and doom sync (doom is in ~/.emacs.d/bin/)

## make emacs work for c++
* reference: https://emacs-lsp.github.io/lsp-mode/tutorials/CPP-guide/
essentially, we should first compile the project 
* we will need clangd, 9+ is better but at least 7.0+ is required.
* install bear from repo or from source 
  * git clone https://github.com/rizsotto/Bear.git and
  * https://github.com/rizsotto/Bear/blob/master/INSTALL.md

## make emacs work for python
