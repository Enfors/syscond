CheckFS()
{
    if [ $# -ne 4 ]; then
        echo "2\tCheckFS called with wrong number of args. Got: '$*'"
        return 1
    fi

    dir=$1
    dir_name=$2
    yellow_threshold=$3
    red_threshold=$4

    cond=0

    percent=$(df -m | grep " $dir$" | awk '{print $5}' | sed -e 's/%//')

    if [ $percent -gt $yellow_threshold ]; then
        cond=1
    fi

    if [ $percent -gt $red_threshold ]; then
        cond=2
    fi

    echo "$cond\tThe $dir_name filesystem is $percent% full."
}
