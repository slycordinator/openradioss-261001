#!/usr/bin/env bash

if [[ -z "${CC}" ]] && ! CC="$(command -v gcc || command -v clang || command -v cc)"; then
   echo "No supported C compiler found" >&2
   echo "Please install one of gcc/clang or export CC with the command/path of your preferred compiler." >&2
   exit 1
fi

#
# create exec directory if it does not exist
#
mkdir -p ../../../exec

"${CC}" -DLINUX -o ../../../exec/th_to_csv_linux64_gf ../src/th_to_csv.c
