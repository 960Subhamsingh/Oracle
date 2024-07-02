SQL> declare
    --initialing array type
    type emp_array is varray(5) of varchar2(10);
    -- initialing varable
    student emp_array;
    begin
    student:= emp_array('MR.','subham','kumar','singh','patna');
    for i in 1 ..student.count loop
    dbms_output.put_line('student('|| i ||'):' || student(i));
   end loop;
   end;
   /
student(1):MR.
student(2):subham
student(3):kumar
student(4):singh
student(5):patna

PL/SQL procedure successfully completed.