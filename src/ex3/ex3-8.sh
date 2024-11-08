#!/bin/bash

# 입력값 유효성 검사
if [ $# -ne 2 ]; then
    echo "사용법: ./ex3-8.sh <이름> <전화번호>"
    exit 1
fi

name=$1
phone=$2

# DB.txt 파일이 없는 경우 새로 생성
if [ ! -f DB.txt ]; then
    touch DB.txt  # 빈 파일 생성
fi

# 입력받은 이름과 전화번호를 DB.txt에 추가
echo "$name $phone" >> DB.txt

exit 0