# PSW-Login

JSP/Servlet 기반의 회원가입 & 로그인 웹 애플리케이션입니다.

## 프로젝트 구조

```
psw-login/src/main/
├── java/                              # Java 소스 코드
│   ├── DBUtil.java                    # DB 연결 유틸리티 클래스
│   ├── LoginServlet.java              # 로그인 처리 서블릿
│   └── RegisterServlet.java           # 회원가입 처리 서블릿
│
├── sql/                               # SQL 스크립트 (학습용 참고 자료)
│   ├── create-user-table.sql          # DB 및 테이블 생성 SQL
│   ├── insert-user.sql                # 유저 조회 SQL 및 JDBC 사용법 설명
│   └── select-user.sql                # 유저 등록 SQL 및 JDBC 사용법 설명
│
└── webapp/                            # 웹 애플리케이션 루트
    ├── WEB-INF/
    │   └── lib/
    │       └── mysql-connector-j-9.2.0.jar  # MySQL JDBC 드라이버
    │
    ├── login.jsp                      # 로그인 페이지 (폼 UI)
    ├── register.jsp                   # 회원가입 페이지 (폼 UI)
    └── welcome.jsp                    # 로그인 성공 시 환영 페이지
```

## 애플리케이션 흐름

```
[login.jsp] ──POST /login──▶ [LoginServlet]
    │                            │
    │                       인증 성공 ──▶ 세션 저장 ──▶ [welcome.jsp]
    │                       인증 실패 ──▶ "로그인 실패" 출력
    │
    └── 회원가입 링크 ──▶ [register.jsp] ──POST /register──▶ [RegisterServlet]
                                                                  │
                                                             등록 성공 ──▶ [login.jsp]로 리다이렉트
                                                             등록 실패 ──▶ "회원가입 실패" 출력
```

## 실행 방법

1. MySQL에서 위의 SQL 스크립트를 실행하여 `jspdb` 데이터베이스와 `users` 테이블을 생성합니다.
2. Eclipse에서 프로젝트를 Import 합니다.
3. Tomcat 10.1 서버를 설정합니다.
4. 프로젝트를 서버에 배포하고 실행합니다.
5. 브라우저에서 `http://localhost:8080/psw-login/login.jsp`에 접속합니다.
