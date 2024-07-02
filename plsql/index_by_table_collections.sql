SQL>  declare
  2      type first_name is table of varchar(12) index by binary_integer;
  3      name_list first_name;
  4      name_index binary_integer;
  5      begin
  6      --adding elements to the table
  7      name_list(0):= 'subham';
  8      name_list(1):= 'singh';
  9     --printing the table
 10      name_index:= name_list.first;
 11      while name_index is not null loop
 12     dbms_output.put_line(name_list(name_index));
 13     name_index := name_list.next(name_index);
 14     end loop;
 15    end;
 16  /
subham
singh

PL/SQL procedure successfully completed.
