create or replace trigger securityemp
before insert
on emp
begin
   if to_char(sysdate,'day') in ('������','������','���ڶ�')
     or to_number(to_char(sysdate,'hh24')) not between 9 and 17
     then
       -- �ǹ���ʱ���ֹinsert
       raise_application_error(-20001,'��ֹ�ڷǹ���ʱ����в���Ա������');
   end if; 
end securityemp;
/
