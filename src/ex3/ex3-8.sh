#!/bin/bash


if [ $# -ne 2 ]; then
    echo "사용법: ./ex3-8.sh <이름> <전화번호>"
    exit 1
fi

name=$1
phone=$2


if [ ! -f DB.txt ]; then
    touch DB.txt  
fi


echo "$name $phone" >> DB.txt

echo "DB.txt에 추가되었습니다."
