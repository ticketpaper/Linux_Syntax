# for문을 이용해 hello world1부터 hello world100까지 파일 생성
# 1. mydir2 디렉토리 생성
# 2. 해당 디렉토리에 파일 생성
# 3. 파일안에 hello world1 ~ hello world100까지 입력
# 4. 에러가 안나게
dir_name="mydir2"

if [ -d "$dir_name" ]; then 
    echo "$dir_name exist"
else
    echo "$dir_name does not exist"
    mkdir mydir2
fi

cd "$dir_name"

if [ -f "*.txt" ]; then
    echo "hello_wolrd.txt exist"
else
    for i in {1..100}
    do
        touch "hello_wolrd$i.txt"
        for j in {1..100}
        do
           echo "Hello Wolrd$i" >> "hello_wolrd$j.txt"
        done
    done
fi