/*
    통계 함수
    1. SUM(표현식) : 표현식의 합계
    2. AVG(표현식) : 표현식의 평균
    3. MAX(표현식) : 표현식의 최댓값
    4. MIN(표현식) : 표현식의 최솟값
    5. COUNT(표현식) : 표현식의 갯수
*/
-- 1. 사원 테이블에서 전체 사원의 연봉의 합계 조회하기
SELECT SUM(SALARY) AS 연봉합계
  FROM EMPLOYEES;
  
-- 2. 사원 테이블에서 전체 사원의 커미션퍼센트의 평균 조회하기
-- 커미션이 없는 사원은 제외하고 조회하기(통계함수는 NULL값 제외계산)
SELECT AVG(COMMISSION_PCT) AS 커미션퍼센트평균
  FROM EMPLOYEES
 WHERE COMMISSION_PCT IS NOT NULL; --커미션이 없는 사원을 제외하는 문 AVG함수는 NULL을 제외하고 계산하기때문에 안써도 됌.

-- 3. 사원 테이블에서 전체 사원 중 최대 연봉 조회하기
SELECT MAX(SALARY) AS 최대연봉
  FROM EMPLOYEES;

-- 4. 사원 테이블에서 전체 사원의 최대 커미션 조회하기
-- 커미션 = 연봉 * 커미션퍼센트
SELECT MAX(SALARY * COMMISSION_PCT) AS 최대커미션
  FROM EMPLOYEES;

-- 5. 사원 테이블에서 전체 사원 중 가장 나중에 입사한 사원의 입사일 조회하기 (최근일수록 날짜가 큰걸로 인식)
SELECT MAX(HIRE_DATE) AS 최근고용일
  FROM EMPLOYEES;

-- 6. 전체 사원 수 조회하기
-- 1) NOT NULL이 확실한 칼럼으로 갯수를 구한다.(PK사용)
SELECT COUNT(EMPLOYEE_ID) AS 전체사원수
  FROM EMPLOYEES;
-- 2) 모든 칼럼으로 갯수를 구한다.  
SELECT COUNT(*) AS 전체사원수
  FROM EMPLOYEES;
  
-- 7. 사원들이 근무하는 부서의 갯수 조회하기
SELECT COUNT(DISTINCT DEPARTMENT_ID) AS 부서수
  FROM EMPLOYEES;