# 기본적인 리눅스 명령어

pwd 
# 사용자가 현재 위치해 있는 폴더 경로 출력

ls 
# 현재 위치에서 파일, 폴더 목록 출력
ls -l 
# + 자세하게 출력
ls -al 
# + 숨김파일 까지 출력

mkdir 폴더명
# 비어있는 폴더 만들기

cd ljp
# 특정 디렉토리로 이동
cd
# 홈 디렉토리로 이동
cd /
# root 디렉토리로 이동
cd ..
# 상위 디렉토리로 이동
# ※ . : 현재, .. : 상위
cd -
# 방금 있던 디렉토리로 이동

touch note1.txt
# 비어있는 파일 만들기

cat note1.txt
# 파일 내용 조회

echo "Hello Wolrd"
# 터미널창에 문자열 출력
echo "Hello Wolrd" > note1.txt 
# echo를 통해 파일에 write하기 (덮어씌움)
echo "Hello Wolrd2" >> note2.txt
# echo를 통해 파일에 "Hello Wolrd2"를 추가

sort < first_file.txt
# 파일에 내용을 정렬해서 보여줌

history
# 이전에 실행했던 명령어 조회

./myscript.sh
# 스크립트 파일 실행 하기 위해선 ./ 붙여야함 (확장자 .sh)

rm
# 삭제 명령어
rm -r
# +디렉토리까지
rm -f
# 묻지않고 지움

cp note1.txt note2.txt
# cp 복사대상 복사후저장할이름
cp -r
# + 디렉토리 복사
cp -r test_dir/ ljp/test_dir
# 저장할 위치를 상대경로로 지정 (현재위치 /home)
cp -r test_dir/ /home/ljp/test_dir
# 저장할 위치를 절대경로로 지정

mv test_dir/ ../
# mv 이동대상 경로지정 (지정 경로로 이동)
mv test_dir/ ljp/test2_dir
# mv 이동대상 경로+이름 (경로지정+이름변경)
mv test_dir test2_dir
# mv 이동대상 이름 (이름변경)

head first_file.txt
# head 파일명 (상위 10줄 출력)
tail first_file.txt
# tail 파일명 (하위 10줄 출력)
head/tail -5 파일명
# -n 옵션: 원하는 숫자만큼 출력

# 조건문
if [ 조건 ]; then # 띄어쓰기 주의 
 조건이 참일때 실행
elif [ 다른조건 ]; then
 첫번째 조건이 거짓이고 다른 조건이 참일 때
else
 모든 조건이 거짓일때 실행
fi

# 반복문
for 변수 in 항목들; 
do
 반복할 구문
done 

# 파일 내에서 특정 패턴이나 문자열 검색
grep [옵션] [패턴] [파일명]
-r : 디렉토리 내 모든 파일에서 검색
-i : 대소문자 구분 없이 검색
-n : 라인수 출력
grep -rin "hello" mydir
# -> hello 문자열을 라인수와 함께 mydir폴더에서 대소문자 구분없이 검색

# 파일을 찾는 명령어
find [경로] [옵션] [행동]
-name : 파일명으로 검색
-type : 타입으로 검색 (f는파일 d는 디렉토리)
-exec, \, {} 
    - exec : find로 찾은 결과에 대해 실행 명령
    - \ : exec 종료 지점을 의미
    - {} : find로 찾은 대상이 담기는 공간을 의미

find . -name "*.txt" | xargs grep -rni "hello"
# -> 현재폴더에서 .txt파일 중 파일안에 대소문자 구분없이 "hello"을 포함하는 파일경로, 줄 출력 
# | (파이프라인)을 통해 다음 명령어로 전달
# xargs는 입력받은 파일을 한줄씩 읽는것을 의미

find . -name "*.txt" -exec echo {} \;
# -> find로 찾은 파일에 대해 echo명령어 실행
find . -name "*.txt" -exec cp -r {} ./testFolder/ \;
# -> 현재 디렉토리에서 모든 텍스트파일을 복사해서 현재 경로에 있는 ./testFolder에 붙여넗는다.

su -
# 루트 계정으로 전환
sudo
# 루트권한을 빌림 (현재 사용자의 비밀번호 입력)

# 사용자 권한 
rwx:rwx:rwx (Read:Write:Execute)
---:---:---
421:421:421
사용자:그룹:그외 
# 사용자 권한 변경 (숫자)
chmod 664 test.txt : rw-rw-r--
# 사용자 권한 변경 (기호)
chmod u+x test.txt : 소유자 권한에서 실행 권한 추가
chmod g-w test.txt : 그룹 권한에서 쓰기 권한 빼기
chmod o=r test.txt : 그외 권한은 쓰기만 가능

# 파일 소유자와 그룹을 변경
chown 소유자:소유그룹 파일명

# vi 편집기 명령모드, 입력모드가 존재한다.
i : 현재 커서부터 입력
o : 다음줄 커서부터 입력
a : 현재 커서에서 다음 커서부터 입력
x : 현재 커서가 위치한 단어 삭제
dd : 현재 커서가 위치한 행 삭제
yy : 현재 커서가 위치한 행 복사
p : 현재 행 이후에 붙여넣기
:w : 파일저장
:q : 저장없이 vi 종료
:wq : 저장 후 종료
G : 파일의 마지막 줄로 이동
gg : 파일의 첫줄로 이동
Ctrl + f : 한 페이지 아래로 이동
Ctrl + b : 한 페이지 위로 이동
/ : 검색하기