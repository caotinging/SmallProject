-- Ϊָ����ְ����ԭ���ʵĻ����ϳ�10%�Ĺ��ʲ���ӡ create by caoting

create or replace procedure raiseSalary(empid in number)
is
   -- �ⲿ���൱��declare�����������Ĳ��֣�
   psal emp.sal%type;       
begin
   -- ��ѯ��Ա���Ĺ���
   select sal into psal from emp where empno=empid;
   update emp set sal=psal*1.1 where empno=empid;
   
   -- ��ӡ�ǹ���ǰ��Ĺ���
   dbms_output.put_line('��ǰ��'||psal||'   �Ǻ�'||psal*1.1);
end raiseSalary;
/
