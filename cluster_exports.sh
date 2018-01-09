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
qco55srv19=("qco55srv19" "qco55srv20" "qco55srv21" "qco55srv22") 
clientvm01=("clientvm01" "clientvm02" "clientvm03" "clientvm04")
qco55srv15=("qco55srv15" "qco55srv16" "qco55srv17" "qco55srv18") 
hua_suse_01=("hua-suse-01" "hua-suse-02" "hua-suse-03" "hua-suse-04")
DistributedR08=("DistributedR08" "DistributedR09" "DistributedR10" "DistributedR11")
qadl15=("qadl15" "qadl16" "qadl17" "qadl18")

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
elif   [ $(contains "${qco55srv19[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${qco55srv19[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#qco55srv19[@]}"
    for i in $(seq 1 ${#qco55srv19[@]})
    do
        echo "export HOST$i=${qco55srv19[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${clientvm01[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${clientvm01[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#clientvm01[@]}"
    for i in $(seq 1 ${#clientvm01[@]})
    do
        echo "export HOST$i=${clientvm01[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${qco55srv15[@]}" $(hostname -s)) == "y" ]; then
    hostlist=$(join_by , ${qco55srv15[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#qco55srv15[@]}"
    for i in $(seq 1 ${#qco55srv15[@]})
    do
        echo "export HOST$i=${qco55srv15[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${hua_suse_01[@]}" $(hostname)) == "y" ]; then
    hostlist=$(join_by , ${hua_suse_01[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#hua_suse_01[@]}"
    for i in $(seq 1 ${#hua_suse_01[@]})
    do
        echo "export HOST$i=${hua_suse_01[$(expr $i - 1)]}"
        echo "export NODE$i=node0$i"
    done
elif   [ $(contains "${DistributedR08[@]}" $(hostname)) == "y" ]; then
    hostlist=$(join_by , ${DistributedR08[@]})
    echo "export HOSTLIST=$hostlist"
    echo "export HOST=$hostlist"
    echo "export NNODES=${#DistributedR08[@]}"
    for i in $(seq 1 ${#DistributedR08[@]})
    do
        echo "export HOST$i=${DistributedR08[$(expr $i - 1)]}"
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
