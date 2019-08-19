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

minio=("minio-01" "minio-02" "minio-03" "minio-04")
qadl15=("qadl15" "qadl16" "qadl17" "qadl18")

if   [ $(contains "${minio[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${minio[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#minio[@]}"
    for i in $(seq 1 ${#minio[@]})
    do
        echo "export HOST$i=${minio[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${qadl15[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${qadl15[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#qadl15[@]}"
    for i in $(seq 1 ${#qadl15[@]})
    do
        echo "export HOST$i=${qadl15[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
fi
