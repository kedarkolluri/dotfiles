## install emacs
location: https://www.gnu.org/software/emacs/manual/html_node/efaq/Installing-Emacs.html
27.1: wget https://ftp.gnu.org/pub/gnu/emacs/emacs-27.1.tar.gz
* you probably will need gnutls and few other stuff 

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
