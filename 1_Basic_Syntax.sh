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