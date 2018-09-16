#!/usr/bin/env bash

set -euo pipefail

if [ $# -eq 0 ]; then
  cat << EOF
usage tool: $0
EOF
  exit 1
fi

classpath=build/classes/java/main
classname=$1
shift

if [[ $classname =~ ^yao.* ]]; then
  java -cp $classpath "$classname" "$@"
elif [[ $classname =~ ^aofa.* ]]; then
  java -cp $classpath "$classname" "$@"
else
  java -cp $classpath "edu.princeton.cs.algs4.$classname" "$@"
fi