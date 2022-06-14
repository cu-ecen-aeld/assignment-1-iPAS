#!/bin/bash

filesdir=$1
searchstr=$2

[[ "${filesdir}" == "" || "${searchstr}" == "" ]] && echo 'Input parameters are required!' && exit 1

[[ ! -d "${filesdir}" ]] && echo "${filesdir} NOT found!" && exit 1

echo "The number of files are $(( $(ls -l ${filesdir} | wc -l) - 1 )) and the number of matching lines are $(grep ${searchstr} ${filesdir} -R | wc -l)"
