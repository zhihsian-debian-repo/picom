#!/bin/sh
set -e
exe=$(realpath $1)
cd $(dirname $0)

eval `dbus-launch --sh-syntax`

./run_one_test.sh $exe configs/empty.conf testcases/basic.py
./run_one_test.sh $exe configs/issue357.conf testcases/issue357.py
./run_one_test.sh $exe configs/issue239.conf testcases/issue239.py
./run_one_test.sh $exe configs/issue239_2.conf testcases/issue239_2.py
./run_one_test.sh $exe configs/issue239_3.conf testcases/issue239_3.py
./run_one_test.sh $exe configs/issue239_3.conf testcases/issue239_3_norefresh.py
./run_one_test.sh $exe configs/issue314.conf testcases/issue314.py
./run_one_test.sh $exe configs/issue314.conf testcases/issue314_2.py
./run_one_test.sh $exe configs/issue314.conf testcases/issue314_3.py
./run_one_test.sh $exe /dev/null testcases/issue299.py
