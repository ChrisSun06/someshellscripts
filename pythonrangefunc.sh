case $# in
    1)
	start=0
	end=$1
	step=1
	cond=-lt
	;;

    2)
	start=$1
	end=$2
	step=1
	cond=-lt
	;;

    3)
	start=$1
	end=$2
	step=$3
	case $step in
	    0)
		echo $0: step argument must not be zero >&2
		exit 1
		;;
	    -*)
		cond=-gt
		;;
	    *)
		cond=-lt
		;;
	esac
	;;
	
    *)
	echo usage: $0 '{ [start] end | start end [step] }' >&2
	exit 1
	;;
esac

i=$start
while test $i $cond $end
do
    echo $i
    i=`expr $i + $step`
done
