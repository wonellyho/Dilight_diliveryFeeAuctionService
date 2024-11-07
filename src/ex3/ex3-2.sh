#!/bin/sh

# 두 숫자와 연산자를 입력받습니다
num1=$1
operator=$2
num2=$3

# 계산 수행
if [ "$operator" = "+" ]; then
  result=$((num1 + num2))
elif [ "$operator" = "-" ]; then
  result=$((num1 - num2))
else
  echo "잘못된 연산자입니다. + 또는 -만 입력하세요."
  exit 1
fi

echo $result
