rem PL/SQL Developer Test Script

set feedback off
set autoprint off

rem Execute PL/SQL Block
-- ʹ��scott�û��µ�emp�� BY CAOTING
/*
ΪԱ���ǹ��ʣ�����͹��ʵ���ÿ����10%�����ǹ����ܶ��
����5��Ԫ��������ǹ��ʵ��������ǹ��ʺ�Ĺ����ܶ�����
�ǹ��ʵ������Լ������ܶ�   
1������͹�������Ҫ��ȡ����Ա���Ĺ����������У�
   select empno,sal from emp order by sal ----�α�
2����Ҫ��ʼ���ı���
   �αꡢ
   �ǹ�����������pperson�������ۼӻ�ȡ
   �ǹ��ʺ����ܶ��ǰ���ʣ�psumsal�������ǵĹ��ʣ�������ȡ��
3��ѭ�������α�
   ����������1.notfound  2.��ǰ�Ǻ��ʼ��ϵ�ǰԱ����Ҫ�ǵĹ����Ƿ����5��
*/
declare
   cursor cemp is select empno,sal from emp order by sal;
   pempno emp.empno%type;
   psal emp.sal%type;
   
   pperson number := 0;
   psumsal number;
begin
   -- ��ȡδ�ǹ���֮ǰ��Ա�����ܹ���
   select count(sal) into psumsal from emp;
   open cemp;
   
   loop
      fetch cemp into pempno,psal;
      exit when cemp%notfound or psumsal+(psal*0.1)>50000;
      
      update emp set sal=sal*1.1 where empno=pempno;
      psumsal := psumsal+(psal*0.1);
      pperson := pperson+1;
   end loop;
   close cemp;
   
   commit;
   dbms_output.put_line('�Ǻ��ʣ�'||psumsal);
   dbms_output.put_line('�ǹ���������'||pperson);
end;
/
