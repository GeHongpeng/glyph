#!/bin/bash

# Archived program command-line for experiment
# Copyright 2016 Xiang Zhang
#
# Usage: bash {this_file} [additional_options]

set -x;
set -e;

qlua main.lua -driver_location models/jdfull/temporal12length512feature256roman -driver_dimension 257 -train_data_file data/jd/sentiment/full_train_pinyin_byte.t7b -train_data_replace 257 -train_data_shift 1 -test_data_file data/jd/sentiment/full_test_pinyin_byte.t7b -test_data_replace 257 -test_data_shift 1 "$@";
