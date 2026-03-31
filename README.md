# 1주차: 개발 환경 구축 보고서

## 실습 환경
- **OS**: Windows 11
- **Shell**: Git Bash
- **Docker**: 29.2.0
- **Git**: 2.53.0
- **작성일**: 2026-03-31

---

## Phase 1: 터미널 기초 + 권한 실습

### 1. Git 설정 확인 (`git config --list`)
user.name과 user.email이 정상 등록된 것을 확인했습니다.

![git config 결과](images/phase1-gitconfig--list.png)

---

### 2. 폴더 이동 및 pwd 확인
`cd ~`로 홈 폴더 이동 후 `dev-workstation` 폴더를 생성하고 이동했습니다.

![pwd 결과](images/phase1-pwd.png)

---

### 3. 파일 및 폴더 생성 확인 (`ls -la`)
`mkdir`로 app, docs 폴더를 생성하고, `touch`로 README.md, test.txt 파일을 생성했습니다.

![ls -la 결과](images/phase1-1s-1a.png)

---

### 4. 파일 복사 및 이름 변경 (`cp`, `mv`)
`cp`로 복사본을 만든 뒤, `mv`를 사용하여 이름을 변경했습니다.

![mv 이름변경 결과](images/phase1-namechange.png)

---

### 5. 파일 삭제 (`rm`)
`rm` 명령어로 파일을 삭제하고 목록에서 사라진 것을 확인했습니다.

![rm 삭제 결과](images/phase1-remove.png)

---

### 6. 권한 실습 (`chmod`)
`test.txt`에 644 권한을, `app` 폴더에 755 권한을 적용했습니다.

![chmod 결과](images/phase1-664755.png)

---

### 7. Git 초기화 및 원격 저장소 연결
`git init` 후 GitHub 저장소를 origin으로 연결했습니다.

![git 설정 결과](images/phase1-setting.png)

---

### 8. 권한 숫자 해석 정리
| 표기 | 숫자 | 권한 설명 |
|:---:|:---:|:--- |
| **rw-r--r--** | 644 | 소유자(읽기/쓰기), 그룹/기타(읽기만) |
| **rwxr-xr-x** | 755 | 소유자(모든권한), 그룹/기타(읽기/실행) |

![폴더 권한 변경](images/phase1-folder.png)
