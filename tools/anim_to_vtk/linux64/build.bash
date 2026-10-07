#!/usr/bin/env bash

if [[ -z "${CXX}" ]] && ! CXX="$(command -v g++ || command -v clang++ || command -v c++)"; then
   echo "No supported C++ compiler found" >&2
   echo "Please install one of g++/clang++, or export CXX with the command/path of your preferred compiler." >&2
   exit 1
fi

#
# create exec if it does not exist
#
mkdir -p ../../../exec

"${CXX}" -DLINUX -o ../../../exec/anim_to_vtk_linux64_gf ../src/anim_to_vtk.cpp
