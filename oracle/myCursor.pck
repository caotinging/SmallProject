  -- Author  : CAOTING
  -- Created : 2017/12/12 9:19:40
  -- Purpose : ʹ���Զ�������ʵ�ַ��ع��

create or replace package myCursor
is
    -- �Զ�������
    type empcursor is ref cursor;
    procedure queryEmpList(dno in number,EmpList out empcursor);
    
end myCursor;
/
create or replace package body myCursor is
   
    procedure queryEmpList(dno in number,empList out empcursor)
      as
      begin
         open empList for select * from emp where deptno=dno;
      end queryEmpList;
end myCursor;
/
