rem PL/SQL Developer Test Script

set feedback off
set autoprint off

rem Execute PL/SQL Block
-- ��ѯĳ�����ŵ�Ա��
declare
   cursor cemp(dno number) is select ename from emp where deptno=dno;
   pname emp.ename%type;
begin
   open cemp(20);
   loop
     fetch cemp into pname;
     exit when cemp%notfound;
     
     dbms_output.put_line(pname);
   end loop;
   close cemp;
end;
/
