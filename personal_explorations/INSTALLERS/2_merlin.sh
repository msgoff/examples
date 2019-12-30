sudo apt install ocaml
sudo apt install opam
sudo apt-get install mercurial
sudo apt-get install darcs
sudo apt install camlp4-extra
opam install user-setup
opam install merlin
opam install core
opam install camlp4
opam install core_extended
opam install core_bench
opam install async
opam install camlp5
eval $(opam config env)
opam-user-setup install

echo "let g:opamshare = substitute(system('opam config var share'),'\n$','','''')" >> ~/.vimrc

echo 'execute "set rtp+=" . g:opamshare . "/merlin/vim"' >> ~/.vimrc

if [[  -f ~/.ocamlinit ]];
then
	cp ocamlinit ~/.ocamlinit
fi
