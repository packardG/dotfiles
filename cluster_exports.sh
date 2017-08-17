#! /bin/bash

function contains() {
    local n=$#
    local value=${!n}
    for ((i=1;i < $#;i++)) {
        if [ "${!i}" == "${value}" ]; then
            echo "y"
            return 0
        fi
    }
    echo "n"
    return 1
}
function join_by { local IFS="$1"; shift; echo "$*"; }

engvmqa1801=("engvmqa1801" "engvmqa1802" "engvmqa1803" "engvmqa1804")
engvmqa1805=("engvmqa1805" "engvmqa1806" "engvmqa1807" "engvmqa1808" "engvmqa1809")

if   [ $(contains "${engvmqa1801[@]}" $(hostname)) == "y" ]; then
    hostlist=$(join_by , ${engvmqa1801[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#engvmqa1801[@]}"
    for i in $(seq 1 ${#engvmqa1801[@]})
    do
        echo "export HOST$i=${engvmqa1801[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif [ $(contains "${engvmqa1805[@]}" $(hostname)) == "y" ]; then
    hostlist=$(join_by , ${engvmqa1805[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#engvmqa1805[@]}"
    for i in $(seq 1 ${#engvmqa1805[@]})
    do
        echo "export HOST$i=${engvmqa1805[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
fi
