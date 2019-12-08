sudo apt install ocaml
sudo apt install opam
sudo apt-get install mercurial
sudo apt-get install darcs

opam install merlin
opam user-setp install 

echo "let g:opamshare = substitute(system('opam config var share'),'\n$','','''')" >> ~/.vimrc

echo 'execute "set rtp+=" . g:opamshare . "/merlin/vim"' >> ~/.vimrc
