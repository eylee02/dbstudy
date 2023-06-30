/*
    1:M 관계
    1.2개의 테이블을 관계 짓는 가장 대표적인 관계이다.
    2.1  :  M
      PK :  FK
     부모 : 자식
    3.반드시 부모테이블을 먼저 만들고, 자식테이블은 나중에 만들어야한다.
    4.반드시 자식테이블을 먼저 지우고, 부모테이블은 나중에 지워야한다.
*/

/*
    삭제옵션
    1.ON DELETE CASCADE : 외래키가 참조하는 기본키값이 삭제되면 외래키도 함께 삭제한다.
    2.ON DELETE SET NULL: 외래키가 참조하는 기본키값이 삭제되면 외래키를 NULL 값으로 처리한다.
*/
--자식테이블 먼저 지우기
DROP TABLE STUDENT_T;

--부모테이블 나중에 지우기
DROP TABLE SCHOOL_T;


--학교 테이블(부모테이블)
CREATE TABLE SCHOOL_T(
    SCH_CODE NUMBER            NOT NULL,
    SCH_NAME VARCHAR2(10 BYTE) NOT NULL,
    CONSTRAINT PK_SCH PRIMARY KEY(SCH_CODE) --제약조건의 이름은 PK_SCH, SCH_CODE에 기본키지정
);

--학생 테이블(자식테이블)
CREATE TABLE STUDENT_T(
    STU_NO   NUMBER            NOT NULL,
    SCH_CODE NUMBER ,  
    STU_NAME VARCHAR2(10 BYTE) NOT NULL,
    CONSTRAINT PK_STU PRIMARY KEY(STU_NO), --제약조건의 이름은 PK_STU, STU_NO에 기본키지정
    CONSTRAINT FK_SCH_STU FOREIGN KEY(SCH_CODE)REFERENCES SCHOOL_T(SCH_CODE) ON DELETE CASCADE --SCH_CODE는 SCHOOL_T 테이블의 칼럼을 참조한다. 제약조건이름 FK_SCH_STU
);
