declare
type publisher is record(
title varchar(50),
author varchar(50),
ook_id number);
book1 publisher ;
book publisher;
   begin
   --Book specification
   book.title:= 'Oracle pl/sql ';
   book.author:= 'larry ellison oracle';
   book.book_id:= 100;
   -- Book1 se]]
   book1.title:= 'Java Programming';
   book1.author:= 'Tom Johnsom';
   book1.book_id:= 101;
      -- Print book 1 record
      dbms_output.put_line('Book 1 title : '|| book1.title);
      dbms_output.put_line('Book 1 author : '|| book1.author);
      dbms_output.put_line('Book 1 book_id : ' || book1.book_id);
      -- Print book 2 record
      dbms_output.put_line('Book 2 title : '|| book.title);
      dbms_output.put_line('Book 2 author : '|| book.author);
      dbms_output.put_line('Book 2 book_id : '|| book.book_id);
  end;
SQL> /
Book 1 title : Java Programming
Book 1 author : Tom Johnsom
Book 1 book_id : 101
Book 2 title : Oracle pl/sql
Book 2 author : larry ellison oracle
Book 2 book_id : 100

PL/SQL procedure successfully completed.
