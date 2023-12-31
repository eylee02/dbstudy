/*
    테이블(table)
    1.데이터베이스에서 데이터를 저장하는 객체이다
    2.표 형식으로 되어있다
    3.행(ROW)와 열(COLUMN)의 집합 형태이다
*/

/*
    데이터타입
    1.NUMBER(p,s) : 정밀도 p , 스케일 s로 표현하는 숫자 형식
        1)정밀도 p : 전체 유효 숫자의 갯수 (1=1개 01=1개 0.99=2개)
        2)스케일 s : 소수부의 유효 숫자의 갯수 (0.1=1개 0.01=2개)
    2.CHAR(size) : 고정문자(character)
        1)글자 수가 고정된 타입(예시:핸드폰번호,주민번호 등)
        2)size :최대 2000 byte
    3.VARCHAR2(size) : 가변문자
        1)글자 수가 고정되어 있지 않은 타입(예시:이름,주소,이메일 등)
        2)size :최대 4000 byte
    4.CLOB : 큰 텍스트 (4000byte 이상 최대 4GB)
    5.DATE : 날짜와 시간을 동시에 표현하는 타입(년,월,일,시,분,초)
    6.TIMESTAMP : 날짜와 시간을 동시에 표현하는 타입(년,원,일,시,분,초,마이크로초(백만분의1초))
*/

/*
    테이블의 제약조건 5가지
    1.NOT NULL : 필수
    2.UNIQUE : 중복불가
    3.PRIMARY KEY : 기본키
    4.FOREIGN KEY : 외래키
    5.CHECK       : 값의 제한 (EX:성별)
*/
--고객테이블
DROP TABLE CUSTOMER_T;
CREATE TABLE CUSTOMER_T(
    고객번호 NUMBER          NOT NULL PRIMARY KEY,
    아이디 VARCHAR2(32 BYTE) NOT NULL UNIQUE,
    고객명 VARCHAR2(32 BYTE) NOT NULL ,
    직업 VARCHAR2(32 BYTE)   NULL,
    휴대폰번호 CHAR(13 BYTE) NULL UNIQUE,
    주민번호 CHAR(14 BYTE)   NULL UNIQUE
);
    
    
    