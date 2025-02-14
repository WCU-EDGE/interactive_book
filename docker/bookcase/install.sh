#!/bin/bash

# setup code server
sudo sh /home/student/build/code-server.sh --prefix=/usr/local/

# modify to install more extensions here ...
sudo code-server --install-extension ms-python.python
sudo code-server --install-extension ms-toolsai.jupyter

# setup Python packages
source /opt/env/python3/bin/activate
sudo pip install jupyter "jupyter-book==2.0.0a1" markdown-include nodejs

sudo cp /home/student/build/entrypoint.sh /usr/local/bin/entrypoint.sh
sudo chmod 755 /usr/local/bin/entrypoint.sh
