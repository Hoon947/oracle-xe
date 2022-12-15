SQL (strcuctured Query language - ������ ���� ���
    ������ �����ͺ��̽� �ý���(RDBMS)���� �ڷḦ ���� �� ó���ϱ� ���� ����� ���
    
select ��
      �����ͺ��̽����� �����˻�
*/

--��� �� ���� *
SELECT *
From departments;

--Ư�� �� ����
SELECT DEPARTMENT_ID,LOCATION_ID

   ��� �����ڸ� ����Ͽ� ����/��¥ ������ ǥ���� �ۼ�

   +���ϱ�
   -����
   *���ϱ�
   /������
*/

--��� ������ ���
SELECT LAST_NAME, SALARY, SALARY + 300
FROM employees;

/*
������ �켱����
    ���ϱ�� ������� ���ϱ� ���⺸�ٴ� ���� ����
*/
SELECT last_name, salary, 12*salary+100
FROM employees;

SELECT last_name, salary, 12*(salary+100)
From employees;

/* 
������� Null ��
    null ���� �����ϴ� ������� null�� ���
*/
SELECT last_name, 12*salary*commission_pct, salary, commission_pct
FROM employees;

/*
�� alias ����
   �� �Ӹ����� �̸��� �ٲߴϴ�.
   ��꿡�� �����մϴ�
   �� �̸� �ٷ� �ڿ� ���ɴϴ�. (�� �̸��� alias ���̿� ���� ������ As Ű���尡 �� ���� �ֽ��ϴ�.)
   �����̳� Ư�� ���ڸ� �����ϰų� ��ҹ��ڸ� �����ϴ� ��� ū ����ǥ�� �ʿ��մϴ�.
*/
SELECT last_name As name, commission_pct comm, salary * 10 as �޿�10��
FROM employees;

SELECT last_name "name", salary*12 "Annual Salary"
FROM employees;

/*
���� ������
    ���̳� ���ڿ��� �ٸ����� �����մϴ�.
    �� ���� ���μ�(||)���� ��Ÿ���ϴ�.
    ��� ���� ���� ǥ������ �ۼ��մϴ�.
*/
SELECT last_name || job_id AS "Employees", last_name
FROM employees;
/*
���ͷ� ���ڿ�
    ���ͷ��� SELECT ���� ���Ե� ����, ���� �Ǵ� ��¥�Դϴ�.
    ��¥ �� ���� ���ͷ� ���� ���� ����ǥ�� ������մϴ�.
    �� ���ڿ��� ��ȯ�Ǵ� �� �࿡ �� �� ��µ˴ϴ�.
*/
SELECT last name || 'is a' || job_id AS "Employee Detatils"
FROM employees;

/*
��ü �ο�(q) ������
    �ڽ��� ����ǥ �����ڸ� �����մϴ�.
    �����ڸ� ���Ƿ� �����մϴ�.
    ������ �� ��뼺�� �����մϴ�.
*/
SELECT department_name || q'[Department's Manager Id; J' || manager_id
As "Department and manager"
FROM departments;