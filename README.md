\# 1주차: 개발 환경 구축 보고서



\## 실습 환경

* OS: Windows 11
* Shell: Git Bash
* Docker : 29.2.0
* Git: 2.53.0.

\- 작성일: 2025-01-31



\---



\## Phase 1: 터미널 기초 + 권한 실습



\### 1. Git 설정 확인 (git config --list)

user.name과 user.email이 정상 등록된 것을 확인했습니다.



!\[git config 결과](images/phase1-gitconfig--list.png)



\---



\### 2. 폴더 이동 및 pwd 확인

cd \~ 로 홈 폴더 이동 후 dev-workstation 폴더 생성 및 이동했습니다.

pwd 결과: /c/Users/이송하/dev-workstatio

!\[pwd 결과](images/phase1-pwd.png)



\---



\### 3. 파일 및 폴더 생성 확인 (ls -la)

mkdir로 app, docs 폴더 생성

touch로 README.md, test.txt 파일 생성 후 ls -la로 확인했습니다.



!\[ls -la 결과](images/phase1-1s-1a.png)



\---



\### 4. 파일 복사, 이름 변경 (cp, mv)

cp로 test\_copy.txt 생성 후

mv로 test\_renamed.txt 로 이름을 변경했습니다.



!\[mv 이름변경 결과](images/phase1-namechange.png)



\---



\### 5. 파일 삭제 (rm)

rm test\_renamed.txt 로 파일을 삭제하고

ls -la 로 삭제된 것을 확인했습니다.



!\[rm 삭제 결과](images/phase1-remove.png)



\---



\### 6. 권한 실습 (chmod)



\#### chmod 644 실행 전/후

test.txt 의 기본 권한 rw-r--r-- (644) 를 확인했습니다.



\#### chmod 755 실행 후

app 폴더에 chmod 755 적용 후

ls -la 로 rwxr-xr-x (755) 로 변경된 것을 확인했습니다.



!\[chmod 644 755 결과](images/phase1-664755.png)



\---



\### 7. Git 초기화 및 원격 저장소 연결



git init 으로 로컬 저장소 초기화 후

git remote add origin 으로 GitHub 저장소와 연결했습니다.



!\[git init 및 remote 연결](images/phase1-setting.png)



\---



\### 8. 권한 숫자 해석 정리



| 표기 | 숫자 | 소유자 | 그룹 | 기타 |

|------|------|--------|------|------|

| rw-r--r-- | 644 | 읽기+쓰기 | 읽기만 | 읽기만 |

| rwxr-xr-x | 755 | 읽기+쓰기+실행 | 읽기+실행 | 읽기+실행 |



\- r = 4 (읽기)

\- w = 2 (쓰기)

\- x = 1 (실행)

\- 644 = 소유자(4+2+0) / 그룹(4+0+0) / 기타(4+0+0)

\- 755 = 소유자(4+2+1) / 그룹(4+0+1) / 기타(4+0+1)

!\[ 폴더 권한 변경 ](images/phase1-folder.png)

