CREATE TABLE Customeres(
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Country VARCHAR(50),
    Age int,
  Phone int
);

desc customeres

-- Insert some sample data into the Customers table
INSERT INTO Customeres (Customer_ID, Customer_Name, Last_Name, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India',23,8574857485);
INSERT INTO Customeres (Customer_ID, Customer_Name, Last_Name, Country, Age, Phone)
VALUES (2, 'Aman ', 'Chopra', 'Australia',21,8574857485);
INSERT INTO Customeres (Customer_ID, Customer_Name, Last_Name, Country, Age, Phone)
VALUES (3, 'Naveen', 'Tulasi', 'Sri lanka',24,8574857485);
INSERT INTO Customeres (Customer_ID, Customer_Name, Last_Name, Country, Age, Phone)
VALUES(4, 'Aditya', 'Arpan', 'Austria',21,8574857485);
INSERT INTO Customeres (Customer_ID, Customer_Name, Last_Name, Country, Age, Phone)
VALUES(5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain',22,8574857485);
       
select category , sum(amount) from detail group by category HAVING sum(amount)>=144323;
