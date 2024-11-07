#!/bin/bash


if [ $# -ne 1 ]; then
    echo "사용법: ./ex3-9.sh <이름>"
    exit 1
fi

name=$1


if [ ! -f DB.txt ]; then
    echo "DB.txt 파일이 존재하지 않습니다."
    exit 1
fi


result=$(grep -i "^$name" DB.txt)

if [ -z "$result" ]; then
    echo "해당 이름의 팀원 정보가 없습니다."
else
    echo "$result"
fi
