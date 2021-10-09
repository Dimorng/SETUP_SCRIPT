for n in $(wmctrl -l | awk -v name=$1 '$0 ~ name{print $1}');
do
    wmctrl -i -c $n;
done
