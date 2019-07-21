#!/bin/bash

conda create -n tf python=3.6
conda activate tf
conda install tensorflow-gpu==1.10.0
conda install cudatoolkit=9.0 #Downgrade to mach driver version.
