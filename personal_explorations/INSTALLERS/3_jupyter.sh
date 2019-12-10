sudo apt install libzmq3-dev
virtualenv /home/user/venv --python=python3.7
source /home/user/venv/bin/activate
pip install jupyter
opam install cohttp-async
opam install cohttp
opam install jupyter
jupyter kernelspec install --name ocaml-jupyter "$(opam config var share)/jupyter" --user
