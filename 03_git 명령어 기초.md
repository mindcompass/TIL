# git 명령어 기초

### 1. 리눅스 기본 명령어

- **`mkdir [폴더명]`** : 현재 위치에 새 폴더를 생성함
- **`cd ~`** : 기본 폴더(보통을 user폴더)로 이동함
- **`pwd`** : 현재 폴더 상태를 파악함
- **`ls`**: 폴더 안에 있는 자료를 탐색함
- **`ls -a`** : 폴더 안에 있는 자료를 탐색함(숨김 파일까지 검색)
- **`rm [파일명]`** : 파일을 삭제함 
- **`rm -r [폴더명]`** : 해당 폴더를 삭제함
- **`mv [이동할 파일/폴더]] [이동할 파일]`**: 파일이나 폴더 이동하기

< br>

### 2. git 상태 및  파일 관리 

- **`git status`** : git의 상태를 파악함
- **`git --version`**: 현재 git의 버전을 확인함

- **`git init`**: 현재 위치에서 파일관리를 시작함
- **`git touch [파일명(속성자 포함)]`** 폴더 안에 파일을 생성함(예) abc.txt
- **`git log`**: 현재 폴더에서 저장된 사항 다 보여줘
- **`git log --oneline`**: 저장된 사항 다 보여주는데 1줄로 보여줘
- **`touch [파일명]`** : 파일을 생성함

< br>

### 3. git push 및 pull 사용 전 설정

- **`git config --global user.name "[이름]"`**: 처음 git을 활용하기 위해서 이름을 설정함
- **`git config --global user.email "[이메일 주소]"`** : 처음 git을 활용하기 위해서 이메일을 설정함
- **`git remote`**: 현재 설정할 저장 공간을 알려줌
- **`git remote -v`**: 저장할 공간을 알려줌(주소까지 보여줌)
- **`git remote add [원격 저장소 이름] [주소(깃허브 or 깃랩 등)]`** : 깃으로 저장할 저장소 및 원격 주소를 설정함
- **`git remote remove` **: 기존 설정된 주소를 삭제함
- **`git remote rename [현재 저장소 이름] [새롭게 바꿀 이름]`** : 저장소

< br>

### 4. git commit & push & pull 관련 

- **`git add [파일명]`**: 해당 파일을 저장할 준비를 함 예) git add abc.txt

- **`git add .`** 폴더에 전체 파일을 저장할 준비를 함

- **`git commit -m "[메모할 내용]"`** : 메모할 내용과 함께 파일을 저장해줘(-m은 메모를 의미함)  

- **`git push [저장소 이름]  [master or branch명 등]`**: 저장한 파일을 원격 저장소로 옮김

- **`git clone [원격 저장소 주소]`**: 원격 저장소에 있는 작업 폴더를 전체를 다운 받음(처음 프로젝트 다운 시)

- **`git pull [저장소 이름] [master ot branch 등]`** : 저장한 파일을 동일한 파일을 제외하고 다운받기

  < br>

  ### 5. branch 관련 명령어

- **`git branch [브랜치 명]`** : 새롭게 브랜치를 생성함

- **`git branch`** : 브랜치의 현재 상태를 확인함

- **`git branch -d [branch 이름]`**: branch 를 삭제함

- **` git switch [변경될 branch 이름]`** : branch로 이동함 switch 대신 checkout을 쓰기도 함

- **`git checkout [master or branch or 커밋번호]`** : 해당 위치로  head(읽기 기능)를 위치함 

- **`git log --oneline --graph`** :  master 및 각종 branch의 관계를 그래프와 함께 출력  

- **`git branch -d [branch 이름]`**: 해당 브랜치 를 삭제함 

< br>


### 6. add/ commit/ push/ pull 이해하기



> **add**는 작업대에 저장할 내용을 올려 놓려서 저장할 준비를 하는 작업(ex 사진을 찍기 위해 작업 대에 올리는 과정)
>
> **commit**은 작업대 올려진 내용을 저장하는 것 (ex 사진을 찍는 것)
>
> **push** 는 저장한 내용(사진)을 외부 저장소로 올리는 것
>
> **pull** 은 외부 저장소에 저장된 파일을 현재 작업 pc에 다운받는 것

