#!/bin/bash

function print_usage()
{
    echo "usage: $0 -t target [--testlist testlist] [-l log] [--enable_feature]"
    echo ""
    echo "This script will program fpga and run regression test"
    echo "Execute the script in directory contains bitstream and dtb"
    echo ""
    echo "input: "
    echo "      target:"
    echo "        board1"
    echo "        board2"
    echo "      testlist: (optional)"
    echo "        list of testcases to run"
    echo "          one test in one line"
    echo "          add '#' in line begin will skip the testcase"
    echo "      log: (optional)"
    echo "        uart log file"
    echo "      enable_feature: (optional)"
    echo "        if set, enable feature"
    exit
}

function sanity_check()
{
    # check input parameter
    if [ -z $target ]; then
        echo ""
        echo "ERROR: please set target"
        echo ""
        print_usage
    fi
}

enable_feature=0
run_test=0

while :; do
    case $1 in
        -h|--help)
            print_usage
            ;;
        -t|--target)
            target=$2
            ;;
        --testlist)
            testlist=$2
            run_test=1
            ;;
        -l|--log)
            log=$2
            ;;
        --enable_feature)
            enable_feature=1
            ;;
        ?*)
            ;;
        *)
            break
    esac
    shift
done

sanity_check

if [ -z $log ]; then
    RUN_LOG="run.log"
else
    RUN_LOG=$log
fi

echo "Input Setting:"
echo ""
echo "target = $target"
echo "log = $RUN_LOG"

if [ $run_test == 1 ]; then
    if [ ! -f $testlist ]; then
        echo "ERROR: no such file: $testlist"
        exit 1
    fi
    echo "testlist = $testlist"
fi

if [ $enable_feature == 1 ]; then
    echo "Enable feature"
else
    echo "Disable feature"
fi
