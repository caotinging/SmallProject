create or replace trigger checksalary
before update
on emp
for each row
  begin
    -- �Ǻ��нˮ���ܵ�����ǰ��нˮ
    if :new.sal<:old.sal then
      -- �����벻���ظ����й̶���Χ
      raise_application_error(-20002,'�Ǻ�нˮ���ܵ�����ǰ'||'  ��ǰ:'||:old.sal||' �Ǻ�:'||:new.sal);
    end if;
end checksalary;
/
