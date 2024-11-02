#!/bin/bash

cd /working_dir && jupyter lab --port=8888 --NotebookApp.token='' --no-browser --ip=0.0.0.0 --allow-root &
code-server --port 8088

