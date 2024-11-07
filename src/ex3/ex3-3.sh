#!/bin/bash

# 입력받은 몸무게와 신장을 변수로 저장
weight=$1
height_cm=$2

# 입력값 유효성 검사
if [ -z "$weight" ] || [ -z "$height_cm" ]; then
    echo "사용법: ./script.sh <weight> <height_cm>"
    exit 1
fi

# BMI 계산 및 결과 판단
awk -v weight="$weight" -v height_cm="$height_cm" '
BEGIN {
    height = height_cm / 100;
    bmi = weight / (height * height);

    if (bmi < 18.5) {
        print "저체중입니다.";
    } else if (bmi >= 18.5 && bmi < 23) {
        print "정상 체중입니다.";
    } else {
        print "과체중입니다.";
    }
}'
exit 0