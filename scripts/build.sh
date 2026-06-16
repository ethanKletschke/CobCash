#!/usr/bin/env bash

cobc -I ../src \
  -x ../src/main.cbl \
  -o ../bin/CobCash \
  -w -q
