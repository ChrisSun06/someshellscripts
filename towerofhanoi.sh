hanoi() {
    if test $1 -ge 1
    then
        hanoi `expr $1 - 1` $2 $4 $3
        echo Move disk $1 from $2 to $3
        hanoi `expr $1 - 1` $4 $3 $2
    fi
}

if test $# -ne 4
then
    echo usage: $0 n frompile topile scratchpile >&2
    exit 1
fi

hanoi "$@"
