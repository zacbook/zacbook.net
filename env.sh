#!/bin/bash
brew install python
pip3 install numpy
pip3 install matplotlib
brew install pandoc
brew install --cask r
# Ignore local R profile since it uses yet-to-be installed libraries
Rscript --no-init-file env.r
