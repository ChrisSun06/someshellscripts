PATH=/bin:/usr/bin

for i in /home/*
do
    if test -f "$i"
    then
        if test `wc -l <"$i"` -eq 3
        then
            rm "$i"
        fi
    fi
done
