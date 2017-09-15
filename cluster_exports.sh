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
fi
