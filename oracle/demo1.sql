rem PL/SQL Developer Test Script

set feedback off
set autoprint off

rem Execute PL/SQL Block
-- Created on 2017/12/11 by CAOTING 
-- ��Ա���ǹ��ʣ��ܲ�1000 ����800 ����400
declare 
  --������
  cursor cemp is select empno,job from emp;
  pempno emp.empno%type;
  pjob   emp.job%type;
begin
  --�򿪹��
  open cemp;  
  loop
       --ȡһ��Ա��
       fetch cemp into pempno,pjob;
       exit when cemp%notfound;
       
       --�ж�ְλ
       if pjob = 'PRESIDENT' then update emp set sal=sal+1000 where empno=pempno;
          elsif pjob = 'MANAGER' then update emp set sal=sal+800 where empno=pempno;
          else update emp set sal=sal+400 where empno=pempno;
       end if;

  end loop;
  --�رչ��
  close cemp;
  --�ύ
  commit;
  dbms_output.put_line('���');
end;
/