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

engvmqa1806=("engvmqa1806" "engvmqa1807" "engvmqa1808" "engvmqa1809")
qastress55=("qastress-55" "qastress-56" "qastress-57" "qastress-58" "qastress-59" "qastress-60")
engvmqa1301=("engvmqa1301" "engvmqa1302" "engvmqa1303" "engvmqa1304")

if   [ $(contains "${engvmqa1806[@]}" $(hostname)) == "y" ]; then
    hostlist=$(join_by , ${engvmqa1806[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#engvmqa1806[@]}"
    for i in $(seq 1 ${#engvmqa1806[@]})
    do
        echo "export HOST$i=${engvmqa1806[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${qastress55[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${qastress55[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#qastress55[@]}"
    for i in $(seq 1 ${#qastress55[@]})
    do
        echo "export HOST$i=${qastress55[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${engvmqa1301[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${engvmqa1301[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#engvmqa1301[@]}"
    for i in $(seq 1 ${#engvmqa1301[@]})
    do
        echo "export HOST$i=${engvmqa1301[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
fi
