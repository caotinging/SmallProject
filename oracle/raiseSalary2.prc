create or replace procedure raiseSalary2(empid in number,rate in number)
is
  psal emp.sal%type;
begin
  select sal into psal from emp where empno=empid;
  update emp set sal=psal*rate+psal where empno=empid;
    
  dbms_output.put_line('Ա���ţ�'||empid||'�ǹ���ǰ��'||psal||'�ǹ��ʺ�'||psal*(1+rate));
end raiseSalary2;
/
