sudo apt install ocaml
sudo apt install opam
sudo apt-get install mercurial
sudo apt-get install darcs
opam install user-setup
opam install merlin
opam install core
opam install camlp4
eval $(opam config env)
opam-user-setup install 

echo "let g:opamshare = substitute(system('opam config var share'),'\n$','','''')" >> ~/.vimrc

echo 'execute "set rtp+=" . g:opamshare . "/merlin/vim"' >> ~/.vimrc

if [[  -f ~/.ocamlinit ]];
then 
	cp ocamlinit ~/.ocamlinit
fi
