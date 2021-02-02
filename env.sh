#!/bin/bash
brew install pandoc
brew install --cask r
# Ignore local R profile since it uses yet-to-be installed libraries
Rscript --no-init-file env.r
