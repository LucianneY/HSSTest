#!/bin/bash

mkdir Plots

# loop through all csv files in directory
for file in ./Datasets/*.csv; do
  # call R script on file
  Rscript Rscript_test.R $file
done
