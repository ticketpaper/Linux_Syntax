# 현재 폴더에 first.txt 폴더가 있으면 exit 
# 출력 없으면 does not exit 출력
file_name="first.txt"
if [ -f "$file_name" ]; then 
    echo "$file_name exist"
else
    echo "$file_name does not exist"
fi

