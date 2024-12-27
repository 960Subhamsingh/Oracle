-- 1. Raising a Predefined Exception:
/*
PL/SQL has a set of predefined exceptions (e.g., NO_DATA_FOUND, TOO_MANY_ROWS, etc.).
You can raise these exceptions explicitly using the RAISE statement.
*/

BEGIN
   -- Some logic that might result in a specific error
   RAISE NO_DATA_FOUND;  -- Raises a predefined exception
END;

-- Raising the Current Exception:

BEGIN
   -- Some code that might raise an exception
   -- Simulate a division by zero error
   DECLARE
      result NUMBER;
   BEGIN
      result := 10 / 0;
   EXCEPTION
      WHEN ZERO_DIVIDE THEN
         DBMS_OUTPUT.PUT_LINE('Caught division by zero');
         RAISE;  -- Re-raise the caught exception
   END;
END;

-- Raising a User-Defined Exception

DECLARE
   -- Declare a user-defined exception
   insufficient_balance EXCEPTION;
   balance NUMBER := 100;
   withdrawal_amount NUMBER := 150;
BEGIN
   -- Check if the balance is sufficient
   IF withdrawal_amount > balance THEN
      RAISE insufficient_balance;  -- Raise the user-defined exception
   END IF;
   
   DBMS_OUTPUT.PUT_LINE('Transaction successful');
EXCEPTION
   WHEN insufficient_balance THEN
      DBMS_OUTPUT.PUT_LINE('Error: Insufficient funds');
END;

-- 4. Raising an Exception with a Custom Message (Using PRAGMA EXCEPTION_INIT):

DECLARE
   -- Declare a user-defined exception
   insufficient_balance EXCEPTION;
   PRAGMA EXCEPTION_INIT(insufficient_balance, -20001);  -- Associate error code
BEGIN
   -- Your logic here
   RAISE insufficient_balance;  -- Raise the user-defined exception
EXCEPTION
   WHEN insufficient_balance THEN
      DBMS_OUTPUT.PUT_LINE('Error: Insufficient balance.');
END;


/*
Remember:
Predefined exceptions like NO_DATA_FOUND, TOO_MANY_ROWS, etc., are commonly used in PL/SQL.
User-defined exceptions can be declared and raised using the EXCEPTION keyword.
You can re-raise the same exception with RAISE; inside an EXCEPTION block.
Use PRAGMA EXCEPTION_INIT to associate custom error numbers with your exceptions if you need specific Oracle error codes.

*/