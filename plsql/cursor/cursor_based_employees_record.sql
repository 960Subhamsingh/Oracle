SQL> declare
  2  cursor c_employee is
  3  select first_name || ' ' || last_name as name ,
  4  emp_no from employees where emp_no < 10056;
  5  employees_record c_employee%rowtype;
  6  begin
  7  open c_employee;
  8  loop
  9  fetch c_employee into employees_record;
 10  exit when c_employee%notfound;
 11  dbms_output.put_line(employees_record.name || ' ' || employees_record.emp_no);
 12  end loop;
 13  end;
 14  /
Parto Bamford 10003
Chirstian Koblick 10004
Kyoichi Maliniak 10005
Anneke Preusig 10006
Georgi Facello 10001
Bezalel Simmel 10002
Tzvetan Zielinski 10007
Saniya Kalloufi 10008
Sumant Peac 10009
Duangkaew Piveteau 10010
Mary Sluis 10011
Patricio Bridgland 10012
Eberhardt Terkki 10013
Berni Genin 10014
Guoxiang Nooteboom 10015
Kazuhito Cappelletti 10016
Cristinel Bouloucos 10017
Kazuhide Peha 10018
Lillian Haddadi 10019
Mayuko Warwick 10020
Ramzi Erde 10021
Shahaf Famili 10022
Bojan Montemayor 10023
Suzette Pettey 10024
Prasadram Heyers 10025
Yongqiao Berztiss 10026
Divier Reistad 10027
Domenick Tempesti 10028
Otmar Herbst 10029
Elvis Demeyer 10030
Karsten Joslin 10031
Jeong Reistad 10032
Arif Merlo 10033
Bader Swan 10034
Alain Chappelet 10035
Adamantios Portugali 10036
Pradeep Makrucki 10037
Huan Lortz 10038
Alejandro Brender 10039
Weiyi Meriste 10040
Uri Lenart 10041
Magy Stamatiou 10042
Yishay Tzvieli 10043
Mingsen Casley 10044
Moss Shanbhogue 10045
Lucien Rosenbaum 10046
Zvonko Nyanchama 10047
Florian Syrotiuk 10048
Basil Tramer 10049
Yinghua Dredge 10050
Hidefumi Caine 10051
Heping Nitsch 10052
Sanjiv Zschoche 10053
Mayumi Schueller 10054
Georgy Dredge 10055

PL/SQL procedure successfully completed.