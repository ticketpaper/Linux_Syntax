# practice3 start 라는 문구 터미널에 출력
# mydir3 폴더 생성 후 해당 폴더로 이동
# 해당 폴더에서 file1 ~ file100 까지 파일을 생성
# 해당 파일마다 각각 hello world from file1, hello world form file2 입력
# practice completed 출력

echo "practice3 start"
dir_name="mydir3"

mkdir "$dir_name"
cd "$dir_name"

for i in {1..100}
do
    touch "file$i.txt"
    for j in {1..100}
    do
        echo "Hello World from file$j" >> "file$j.txt"
    done
done

echo "practice3 completed"
