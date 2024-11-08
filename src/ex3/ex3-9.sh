#!/bin/bash


if [ $# -ne 1 ]; then
    echo "사용법: ./ex3-9.sh <검색어>"
    exit 1
fi

search_term=$1


if [ ! -f DB.txt ]; then
    echo "DB.txt 파일이 존재하지 않습니다."
    exit 1
fi


result=$(grep -i "$search_term" DB.txt)

if [ -z "$result" ]; then
    echo "해당 검색어와 일치하는 정보가 없습니다."
else

    echo "$result"
fi
exit 0