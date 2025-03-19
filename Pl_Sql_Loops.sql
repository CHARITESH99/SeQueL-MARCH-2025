-- **********             LOOPS                 **********

-- ****      BASIC LOOP *****

DECLARE 
    v_counter number:=1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_counter);
        v_counter := v_counter+1;
        exit when v_counter>5;
    end loop;
END;

-- *******     Multiples of 4 *********

DECLARE
    v_counter number:=0;
BEGIN
    LOOP
        dbms_output.PUT_LINE(v_counter);
        v_counter := v_counter+4;
        exit when v_counter>100;
    end loop;
END;

--  ****** FOR LOOP ******

BEGIN
    for i in 1..5 loop
        dbms_output.put_line(i);
    end loop;
END;

--  ***** REVERSE FOR LOOP ****** 

BEGIN
    for i in reverse 1..10 LOOP
        dbms_output.put_line(i);
    end loop;
END;

--  ****** Prints Odd Numbers from 1 to 10 in reverse order *****

BEGIN
    for i in reverse 1..10 loop
        if mod(i,2) = 1 THEN
            DBMS_OUTPUT.PUT_LINE(i);
        end if;
    end loop;
END;

--  *****   Squares of a number ****** 

BEGIN 
    for i in 1..10 LOOP
        dbms_output.PUT_LINE(i || '  ' ||i*i);
    end loop;
END;

--  *****  FIBONACCI SERIES  ****** 

DECLARE
    a number:=0;
    b number:=1;
    c number;
BEGIN
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    for i in 1..10 LOOP
        c:=a+b;
            dbms_output.put_line(c);
        a:=b;
        b:=c;
    end loop;
END;

--  ***** MULTIPLICATION TABLE  *******

BEGIN
    for num in 1..5 LOOP
        dbms_output.put_line('Multiplication table of number'|| num);
        for i in 1..10 LOOP
            dbms_output.put_line(num || '*' || i || '=' ||num*i);
        end loop;
    end loop;
END;