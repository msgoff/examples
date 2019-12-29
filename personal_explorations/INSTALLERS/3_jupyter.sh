sudo apt install libzmq3-dev
sudo apt install libgmp-dev
sudo apt install python3-pip
user_name="$(whoami)"
python_version="$(find /usr/local/lib/ -type f|grep python3|cut -d '/' -f 5|sort|uniq|tail -n 1)"
virtualenv /home/"$user_name"/venv --python="$python_version"
source /home/"$user_name"/venv/bin/activate
pip install jupyter
opam install cohttp-async
opam install cohttp
opam install jupyter
jupyter kernelspec install --name ocaml-jupyter "$(opam config var share)/jupyter" --user
