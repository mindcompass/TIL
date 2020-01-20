ALTER TABLE 연습
DESC MEMBER;
#주석
-- CREATE DATABASE MYDB

CREATE TABLE 연습(
	이메일 VARCHAR(20),
 	비밀번호 VARCHAR(20),
 	나이 INT
);


CREATE TABLE 연습1(
	이메일 VARCHAR(20),
 	비밀번호 VARCHAR(20),
 	나이 INT,
 	PRIMARY KEY(이메일)
);

CREATE TABLE MEMBER (
	NUM INT,
 	NAME VARCHAR(10),
 	EMAIL VARCHAR(50),
 	PHONE VARCHAR(20),
 	PRIMARY KEY(NUM)
);


CREATE TABLE 부서 (
 부서번호 INT,
 부서이름 VARCHAR(10),
 PRIMARY KEY(부서번호)
);


CREATE TABLE 사원 (
 사원번호 INT,
 사원이름 VARCHAR(10) NOT NULL,
 소속부서 INT,
 PRIMARY KEY(사원번호),
 FOREIGN KEY(소속부서) REFERENCES 부서(부서번호)
);

CREATE TABLE EMP (
 EMPNO INT,
 ENAME VARCHAR(10),
 JOB VARCHAR(9),
 MGR  INT,
 HIREDATE DATETIME,
 SAL INT,
 COMM INT,
 DEPTNO TINYINT,
 PRIMARY KEY(EMPNO)
);


CREATE TABLE DEPT (
 DEPTNO TINYINT,
 DNAME VARCHAR(14),
 LOC VARCHAR(13),
 PRIMARY KEY(DEPTNO)
);


ALTER TABLE EMP
	ADD FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO);
	
	
ALTER TABLE member
	DROP AGE;
	
ALTER TABLE MEMBER
	MODIFY EMAIL VARCHAR(20);
	
ALTER TABLE MEMBER
	MODIFY EMAIL VARCHAR(30);
DESC EMP;


ADD PRIMARY KEY(이메일);

ALTER TABLE 연습
	ADD 대상 VARCHAR(20);
	
	
CREATE TABLE 고객 (
 고객아이디 VARCHAR(20),
 고객이름 VARCHAR(10) NOT NULL,
 나이 INT,
 등급 VARCHAR(10) NOT NULL,
 직업 VARCHAR(20),
 적립금 INT DEFAULT 0,
 PRIMARY KEY(고객아이디)
);

CREATE TABLE 제품 (
 제품번호 CHAR(3),
 제품명 VARCHAR(20),
 재고량 INT,
 단가 INT,
 제조업체 VARCHAR(20),
 PRIMARY KEY(제품번호)
);

CREATE TABLE 주문 (
 주문번호 CHAR(3),
 주문고객 VARCHAR(20),
 주문제품 CHAR(3),
 수량 INT,
 배송지 VARCHAR(30),
 주문일자 DATETIME,
 PRIMARY KEY(주문번호),
 FOREIGN KEY(주문고객) REFERENCES 고객(고객아이디),
 FOREIGN KEY(주문제품) REFERENCES 제품(제품번호)
);



-- 제약조건 명칭 조회
-- 제약 조건 삭제
-- 제약 조건 입력
--제약 조건에 대해서는 변경이 불가능함
--제약조건은 informationi_schmema에 존재함


SELECT * FROM information_schema.TABLE_CONSTRAINTS 
-- EMP_IBFK_1 제약조건 명칭
ALTER TABLE EMP DROP FOREIGN KEY EMP_IBFK_1;

ALTER TABLE EMP ADD
	CONSTRAINT  FK_EMP_DEPT
	FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO)
	ON DELETE CASCADE;
	

INSERT INTO 부서 (부서번호, 부서이름)
 VALUES(1, '인사부');
INSERT INTO 부서 (부서번호, 부서이름)
 VALUES(2, '연구부');
INSERT INTO 부서 (부서번호, 부서이름)
 VALUES(3, '홍보부');

INSERT INTO 사원 (사원번호, 사원이름, 소속부서) VALUES (1001, 'AAA', 3);
INSERT INTO 사원 (사원번호, 사원이름, 소속부서) VALUES (1002, 'BBB', 2);
INSERT INTO 사원 (사원번호, 사원이름, 소속부서) VALUES (1003, 'CCC', 1);

INSERT INTO MEMBER (NUM, NAME, EMAIL,PHONE) VALUES(1,'A', 'aaa@gmail.com','010-0000-0001');
INSERT INTO MEMBER (NUM, NAME, EMAIL,PHONE) VALUES(2,'B', 'bbb@gmail.com','010-0000-0002');
INSERT INTO MEMBER (NUM, NAME, EMAIL,PHONE) VALUES(3,'C', 'ccc@gmail.com','010-0000-0003');
INSERT INTO MEMBER (NUM, NAME, EMAIL,PHONE) VALUES(4,'D', 'ddd@gmail.com','010-0000-0004');
INSERT INTO MEMBER (NUM, NAME, EMAIL,PHONE) VALUES(5,'E', 'eee@gmail.com','010-0000-0005');
INSERT INTO MEMBER (NAME, NUM) VALUES('F', 6);


INSERT INTO 고객 VALUES ('apple', '정소화', 20, 'gold', '학생', 1000);
INSERT INTO 고객 VALUES ('banana', '김선우', 25, 'vip', '간호사', 2500);
INSERT INTO 고객 VALUES ('carrot', '고명석', 28, 'gold', '교사', 4500);
INSERT INTO 고객 VALUES ('orange', '김용욱', 22, 'silver', '학생', 0);
INSERT INTO 고객 VALUES ('melon', '성원용', 35, 'gold', '회사원', 5000);
INSERT INTO 고객 VALUES ('peach', '오형준', NULL, 'silver', '의사', 300);
INSERT INTO 고객 VALUES ('pear', '채광주', 31, 'silver', '회사원', 500);

INSERT INTO 제품 VALUES ('p01', '그냥만두', 5000, 4500, '대한식품');
INSERT INTO 제품 VALUES ('p02', '매운쫄면', 2500, 5500, '민국푸드');
INSERT INTO 제품 VALUES ('p03', '쿵떡파이', 3600, 2600, '한빛제과');
INSERT INTO 제품 VALUES ('p04', '맛난초콜렛', 1250, 2500, '한빛제과');
INSERT INTO 제품 VALUES ('p05', '얼큰라면', 2200, 1200, '대한식품');
INSERT INTO 제품 VALUES ('p06', '통통우동', 1000, 1550, '민국푸드');
INSERT INTO 제품 VALUES ('p07', '달콤비스켓', 1650, 1500, '한빛제과');

INSERT INTO 주문 VALUES ('o01', 'apple', 'p03', 10, '서울시 마포구', '2013-01-01');
INSERT INTO 주문 VALUES ('o02', 'melon', 'p01', 5, '인천시 계양구', '2013-01-10');
INSERT INTO 주문 VALUES ('o03', 'banana', 'p06', 45, '경기도 부천시', '2013-01-11');
INSERT INTO 주문 VALUES ('o04', 'carrot', 'p02', 8, '부산시 금정구', '2013-02-01');
INSERT INTO 주문 VALUES ('o05', 'melon', 'p06', 36, '경기도 용인시', '2013-02-20');
INSERT INTO 주문 VALUES ('o06', 'banana', 'p01', 19, '충청북도 보은군', '2013-03-02');
INSERT INTO 주문 VALUES ('o07', 'apple', 'p03', 22, '서울시 영등포구', '2013-03-15');
INSERT INTO 주문 VALUES ('o08', 'pear', 'p02', 50, '강원도 춘천시', '2013-04-10');
INSERT INTO 주문 VALUES ('o09', 'banana', 'p04', 15, '전라남도 목포시', '2013-04-11');
INSERT INTO 주문 VALUES ('o10', 'carrot', 'p03', 20, '경기도 안양시', '2013-05-22');
 
# select
DESC 고객;
SELECT 고객아이디, 고객이름, 등급 FROM 고객;
SELECT * FROM 고객;

SELECT 제품명, 제조업체  FROM 제품;

SELECT DISTINCT 제조업체, 제품명  FROM 제품;
SELECT 제품명, 단가 FROM 제품;
SELECT 제품명, 단가 AS '가격'  FROM 제품;
SELECT 제품명, 단가 '가격'  FROM 제품;

#연습문제3-2

INSERT INTO EMP VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20);
INSERT INTO EMP VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
INSERT INTO EMP VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);
INSERT INTO EMP VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO EMP VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);
INSERT INTO EMP VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);
INSERT INTO EMP VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);
INSERT INTO EMP VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20);
INSERT INTO EMP VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
INSERT INTO EMP VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);
INSERT INTO EMP VALUES (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20);
INSERT INTO EMP VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30);
INSERT INTO EMP VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO EMP VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

INSERT DEPT (DEPTNO,DNAME,LOC) VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT DEPT (DEPTNO,DNAME,LOC) VALUES(20, 'RESEARCH', 'DALLAS');
INSERT DEPT (DEPTNO,DNAME,LOC) VALUES(30, 'SALES', 'CHICAGO');
INSERT DEPT (DEPTNO,DNAME,LOC) VALUES(40, 'OPERATIONS', 'BOSTON');

#연습문제 3-3
SELECT * FROM EMP;

SELECT ENAME, JOB, HIREDATE, SAL, DEPTNO FROM EMP;

SELECT  JOB , DEPTNO  FROM EMP;
SELECT DISTINCT JOB , DEPTNO  FROM EMP;

SELECT * FROM DEPT;

SELECT DNAME AS '부서명',  LOC AS '부서위치'  FROM DEPT;

SELECT 제품명, 단가
FROM 제품;

SELECT 제품명, 단가 + 500 AS '조정단가'
FROM 제품;

SELECT 제품명, 단가*0.8 AS 할인단가
FROM 제품;


SELECT 제품명, 재고량, 단가
FROM 제품
WHERE 제조업체 = '한빛제과';

SELECT 제품명, 재고량, 단가
FROM 제품
WHERE 제조업체='한빛제과'

SELECT * FROM 주문;
SELECT * FROM 주문
WHERE 수량 >=30 AND 배송지 ='강원도 춘천시';

#연습문제 3-4
SELECT * FROM EMP;
SELECT SAL *1.1 AS '인상금액', (SAL*12) AS '연봉' FROM EMP;

SELECT SAL *1.1 AS '인상금액',
		SAL*12 AS '보너스 전 연봉',
	 SAL*12 +IFNULL(COMM,0) AS '최종 연봉'
	FROM EMP;

SELECT EMPNO, ENAME,SAL, COMM, COMM*0.95 AS '감액된 보너스' FROM EMP;


#연습문제 3-5
#1번
SELECT  ENAME, JOB FROM EMP 
WHERE MGR =7839

#2번

SELECT JOB, DEPTNO FROM EMP 
WHERE SAL >=3000;

#3번
SELECT ENAME, JOB, SAL FROM EMP 
WHERE JOB !='CLERK' AND JOB !='SALESMAN';

#4번
SELECT SAL, DEPTNO FROM EMP 
WHERE MGR= 7839 OR JOB= 'ANALYST'


SELECT * FROM EMP 
 WHERE (MGR=7698 OR MGR=7839) 
  AND DEPTNO=10;



SELECT * FROM 고객;
SELECT * FROM 고객
WHERE 고객아이디 LIKE '%a%' AND 
직업 LIKE '___';

SELECT 고객이름 FROM 고객
WHERE 나이 IS NOT NULL;

SELECT ENAME, JOB FROM EMP
WHERE ENAME LIKE 'A%';

SELECT ENAME, JOB FROM EMP
WHERE ENAME LIKE '%N';


SELECT ENAME, DEPTNO  FROM EMP
WHERE ENAME LIKE '____' AND ENAME LIKE '__R%';

SELECT ENAME, SAL  FROM EMP
WHERE ENAME LIKE '_I%';


#연습문제 3-7

SELECT ENAME, JOB, SAL, MGR  FROM EMP
WHERE MGR IS NULL;


SELECT ENAME, HIREDATE, SAL, COMM  FROM EMP
WHERE COMM IS NULL;

SELECT *  FROM EMP
WHERE MGR IS NOT NULL AND DEPTNO=20;

SELECT *  FROM EMP
WHERE COMM IS NOT NULL AND HIREDATE LIKE '1981-02%' ;


SELECT *  FROM EMP
WHERE COMM IS NOT NULL AND HIREDATE > '1981-02' ;

SELECT 고객이름, 등급, 나이
FROM 고객
ORDER BY 나이 DESC;


SELECT 주문고객, 주문제품, 수량, 주문일자
FROM 주문
WHERE 수량 >= 10
ORDER BY 주문제품 ASC, 수량 DESC;



SELECT *
FROM EMP
ORDER BY ENAME DESC


SELECT *
FROM EMP
ORDER BY HIREDATE 
#없으면 오름차순

SELECT *
FROM EMP
ORDER BY DEPTNO DESC , ENAME DESC

SELECT *
FROM EMP
ORDER BY SAL
LIMIT 3,5; -- 인덱스 0번 부터 5개를 출력하라

SELECT *
FROM EMP
WHERE DEPTNO=30;
#30번 부서에 근무하는 사람 중에 급여가 높은 순으로
#정렬하여 5건씩 출력하는 문장 문들기
#SELECT , 2. FROM, 3. WHERE 4. ORDER BY, 5.LIMIT

SELECT * 
 FROM EMP
 WHERE DEPTNO =30
  ORDER BY SAL DESC
   LIMIT 0,5;

SELECT * 
 FROM EMP
  WHERE DEPTNO =30
  ORDER BY SAL DESC
   LIMIT 5,5;
 
#연습문제 9-1 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급을 출력
SELECT EMPNO, ENAME, SAL 
FROM EMP
WHERE DEPTNO=10;
#문제 2 사원번호가 7369인 사람 중 이름, 입사일, 부서번호를 출력
SELECT ENAME, HIREDATE, DEPTNO 
FROM EMP
WHERE EMPNO=7369;

#문제 3  이름이 ALLEN인 사람의 모든 정보를 출력
SELECT * 
FROM EMP
WHERE ENAME='ALLEN'

#문제 4 직업이 MANAGER가 아닌 사람의 모든 정보를 출력
SELECT * 
FROM EMP
WHERE JOB !='MANAGER'

#문제5  급여가 $800 이상인 사람의 이름, 급여, 부서번호를 출력

SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE SAL >=800

#문제 6 부서번호가 20번 이상인 사원의 모든 정보를 출력
SELECT *
FROM EMP
WHERE DEPTNO >=20

#문제 7 이름이 K 보다 높은 이름을 가진 사람의 모든 정보를 출력
 
SELECT *
FROM EMP
WHERE  ENAME> 'K%'

 