declare
in_string varchar(100):= 'my name is subham kumar';
out_string varchar(50);
procedure double (original in  varchar , new_string out varchar) as
begin
new_string := original || original;
end;
begin
double (in_string, out_string);
dbms_output.put_line('out_string=' || out_string);
end;
/
