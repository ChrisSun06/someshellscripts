#!/bin/sh

if test $# -ne 4
then
    echo usage: $0 n frompile topile scratchpile >&2
    exit 1
fi

if test $1 -lt 1
then
    exit 0   # base case: no disks
fi

$0 `expr $1 - 1` $2 $4 $3
echo Move disk $1 from $2 to $3
$0 `expr $1 - 1` $4 $3 $2
