# 1주차: 개발 환경 구축 보고서

---

## 1. 프로젝트 개요
본 과제의 목표는 개발 환경을 직접 구축하고,  
터미널, Git, Docker를 활용하여 재현 가능한 실행 환경을 만드는 것이다.

---

## 2. 실습 환경
- **OS**: Windows 11  
- **Shell**: Git Bash  
- **Docker**: 29.2.0  
- **Git**: 2.53.0  
- **작성일**: 2026-03-31  

---

## 3. Phase 1: 터미널 기초 + 권한 실습

### 3-1. Git 설정 확인
```bash
git config --list
```

설명: 사용자 정보(user.name, user.email)가 정상 등록된 것을 확인했다.

![git config](images/phase1-gitconfig--list.png)

---

### 3-2. 현재 위치 확인
```bash
pwd
```

설명: 현재 작업 디렉토리 위치를 확인하였다.

![pwd](images/phase1-pwd.png)

---

### 3-3. 파일 및 폴더 생성
```bash
mkdir app docs
touch README.md test.txt
ls -la
```

설명: 폴더와 파일을 생성하고 숨김 파일 포함 목록을 확인하였다.

![ls -la](images/phase1-1s-1a.png)

---

### 3-4. 파일 복사 및 이름 변경
```bash
cp test.txt copy.txt
mv copy.txt renamed.txt
```

설명: 파일을 복사하고 이름을 변경하였다.

![rename](images/phase1-namechange.png)

---

### 3-5. 파일 삭제
```bash
rm renamed.txt
```

설명: 파일 삭제 후 목록에서 사라진 것을 확인하였다.

![remove](images/phase1-remove.png)

---

### 3-6. 권한 변경
```bash
chmod 644 test.txt
chmod 755 app
ls -la
```

설명: 파일과 폴더 권한을 변경하고 결과를 확인하였다.

![chmod](images/phase1-664755.png)

---

### 3-7. 폴더 구조 확인
```bash
ls
```

설명: 전체 프로젝트 구조를 확인하였다.

![folder](images/phase1-folder.png)

---

### 3-8. Git 초기화 및 연결
```bash
git init
git remote add origin <repository-url>
```

설명: Git 저장소를 초기화하고 GitHub와 연결하였다.

![git init](images/phase1-setting.png)

---

## 4. 권한 숫자 해석

| 표기 | 숫자 | 권한 설명 |
|:---:|:---:|:--- |
| rw-r--r-- | 644 | 소유자(읽기/쓰기), 그룹/기타(읽기만) |
| rwxr-xr-x | 755 | 소유자(모든 권한), 그룹/기타(읽기/실행) |

---

## 5. Git 파일 추적 상태 확인

### 문제 상황
```bash
git status
```

출력:
```bash
Untracked files:
  images/project-structure.png
```

### 원인
- 새로 생성한 파일은 Git이 자동으로 추적하지 않는다.

### 해결 방법
```bash
git add images/project-structure.png
git commit -m "Add: project structure screenshot"
git push origin main
```

### 설명
- `git add`: 파일을 추적 대상으로 등록  
- `git commit`: 변경사항 저장  
- `git push`: 원격 저장소에 업로드  

### 실행 결과
![git untracked](images/git-untracked.png)

---

## 6. Phase 4: Docker hello-world 실행

### 실행 명령
```bash
docker run hello-world
```

### 출력 결과
```bash
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

### 설명
- Docker Hub에서 이미지를 다운로드하여 실행하였다.
- Docker 엔진이 정상적으로 동작함을 확인하였다.

### 동작 과정 이해
1. Docker client → daemon 요청  
2. daemon → Docker Hub 이미지 다운로드  
3. 컨테이너 생성 및 실행  
4. 결과 출력  

### 실행 결과
![docker hello world](images/docker-hello-world.png)

---

## 7. 프로젝트 구조

설명: 최종 작업 디렉토리 구조


## 8. ubuntu 컨테이너 실행 및 내부 진입

### 실행 명령
```bash
docker run -it --name ubuntu-test ubuntu bash
```

### 내부 명령 실행
```bash
ls
echo "hello ubuntu"
pwd
```

### 종료 후 상태 확인
```bash
exit
docker ps -a
```

### 설명
- ubuntu 이미지를 다운로드하고 컨테이너를 실행하였다.
- 컨테이너 내부에서 `ls`, `echo`, `pwd` 명령을 실행하였다.
- `exit` 후 `docker ps -a`를 통해 컨테이너 상태가 Exited로 변경된 것을 확인하였다.
- 전체 실행 과정을 하나의 흐름으로 확인하였다.

### 실행 결과
![ubuntu container full process](images/ubuntu-full-process.png)

### attach와 exec 차이
- `attach`: 실행 중인 컨테이너의 표준 입출력에 연결
- `exec`: 실행 중인 컨테이너에 새로운 프로세스를 실행
- 실습에서는 `exec` 방식이 더 안전하고 직관적이었다.






![project structure](images/project-structure.png)
