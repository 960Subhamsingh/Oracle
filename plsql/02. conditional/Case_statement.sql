declare
grade char(1):= 'A';
begin
case grade
when 'A' then dbms_output.put_line('Excellent');
when 'B' then dbms_output.put_line('Very Good');
when 'C' then dbms_output.put_line('Good');
when 'D' then dbms_output.put_line('Average');
when 'E' then dbms_output.put_line('Passed');
else dbms_output.put_line('Failed');
end case;
end;


