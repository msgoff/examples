curl -OL https://github.com/ocaml/ocaml/archive/4.08.1.tar.gz
tar -zxvf 4.08.1.tar.gz
cd ocaml-4.08.1
./configure
make world world.opt
sudo make install
