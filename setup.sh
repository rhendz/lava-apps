#!/bin/bash

# Install poetry
pip install "poetry>=1.1.13"

# Setup lava repo
cd lava
git checkout v0.3.0
poetry config virtualenvs.in-project true
poetry install

cd ..

# Setup lava-dl repo
cd lava-dl
git checkout v0.2.0
poetry config virtualenvs.in-project true
poetry install

cd ..
