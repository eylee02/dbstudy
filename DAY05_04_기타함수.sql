-- 1. 순위 구하기
-- RANK() OVER(ORDER BY 칼럼 ASC)  : 낮은 값이 1등
-- RANK() OVER(ORDER BY 칼럼 DESC) : 높은 값이 1등
SELECT EMPLOYEE_ID
     , SALARY
     , RANK() OVER(ORDER BY SALARY DESC) AS 연봉순위 -- 연봉 내림차순 정렬 후 순위 매기기(동점자는 같은 순위를 가짐)
     , HIRE_DATE
     , RANK() OVER(ORDER BY HIRE_DATE) AS 입사순위   -- 고용일 오름차순 정렬 후 순위 매기기
  FROM EMPLOYEES;
  
-- 2. 행 번호 구하기
-- ROW_NUMBER() OVER(ORDER BY 칼럼)
SELECT EMPLOYEE_ID
     , SALARY
     , ROW_NUMBER() OVER(ORDER BY SALARY DESC)  -- 연봉 내림차순 정렬 후 번호 매기기(동점자 처리 방식 없음)
  FROM EMPLOYEES;
  
-- 3. 암호화 함수
SELECT STANDARD_HASH('1111', 'SHA1')    -- 암호화 알고리즘 SHA1
     , STANDARD_HASH('1111', 'SHA256')  -- 암호화 알고리즘 SHA256
     , STANDARD_HASH('1111', 'SHA384')  -- 암호화 알고리즘 SHA384
     , STANDARD_HASH('1111', 'SHA512')  -- 암호화 알고리즘 SHA512
     , STANDARD_HASH('1111', 'MD5')     -- 암호화 알고리즘 MD5
  FROM DUAL;
  
-- 4. 분기 처리 함수 (부서번호가 10씩 늘어날때마다 부서이름부여)
SELECT EMPLOYEE_ID
     , DEPARTMENT_ID
     , DECODE(DEPARTMENT_ID
        , 10, 'Administration'
        , 20, 'Marketing'
        , 30, 'Purchasing'
        , 40, 'Human Resources'
        , 50, 'Shipping'
        , 60, 'IT') AS DEPARTMENT_NAME
  FROM EMPLOYEES;

-- 5. 분기 처리 표현식
SELECT EMPLOYEE_ID
     , DEPARTMENT_ID
     , CASE
        WHEN DEPARTMENT_ID = 10 THEN 'Administration'
        WHEN DEPARTMENT_ID = 20 THEN 'Marketing'
        WHEN DEPARTMENT_ID = 30 THEN 'Purchasing'
        WHEN DEPARTMENT_ID = 40 THEN 'Human Resources'
        WHEN DEPARTMENT_ID = 50 THEN 'Shipping'
        WHEN DEPARTMENT_ID = 60 THEN 'IT'
        ELSE 'Unknown'
      END AS DEPARTMENT_NAME
  FROM EMPLOYEES;
        
    

  
  
