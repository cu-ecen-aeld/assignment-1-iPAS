#!/bin/bash


writefile=$1
writestr=$2

[[ "${writefile}" == "" || "${writestr}" == "" ]] && echo 'Please specify the parameters' && exit 1

# [[ -f "${writefile}" ]] && echo "${writefile}" && exit 1

path_where="$(dirname ${writefile})"
[[ ! -d  "${path_where}" ]] && mkdir -p "${path_where}"
echo "${writestr}" > "${writefile}"
