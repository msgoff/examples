sudo apt install ocaml
sudo apt install opam
sudo apt-get install mercurial
sudo apt-get install darcs

opam init
opam install num
opam install utop
opam install camlp5
git clone https://github.com/dmtcp/dmtcp.git
cd dmtcp/
./configure
make
sudo make install
cd ..
git clone https://github.com/jrh13/hol-light.git
make
