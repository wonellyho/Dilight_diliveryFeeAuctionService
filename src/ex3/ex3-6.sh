#!/bin/bash

# 입력된 폴더 이름
folder_name=$1

# 폴더가 존재하는지 확인
if [ ! -d $folder_name ]; then
    echo "폴더가 없습니다. $folder_name 폴더를 생성합니다."
    mkdir "$folder_name"
fi

# 폴더로 이동
cd $folder_name

# 5개의 파일 생성
for i in `seq 0 4`; do
    echo "This is file $i" > "file$i.txt"
done

# 파일 압축
tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

# 새 폴더 생성
new_folder="files_extracted"
mkdir "$new_folder"

# 새 폴더로 압축 해제
tar -xf files.tar -C "$new_folder"

echo "작업이 완료되었습니다."
