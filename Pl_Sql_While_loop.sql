-- ***** WHILE LOOP *****

--  ** Prints 1 to 5 numbers **
DECLARE
    count_num number := 1;
BEGIN
    while count_num <=5 LOOP
        dbms_output.put_line(count_num);
        count_num := count_num+1;
    end loop;
END;

-- ** Prints odd numbers **
DECLARE
    counter_num number := 1;
BEGIN
    while counter_num<=10 LOOP
        dbms_output.put_line(counter_num);
        counter_num := count_num+2;
    end loop;
END;

-- ** Prints 1 to 10 in reverse order **
DECLARE
    count_num number := 10;
BEGIN
    while count_num>=1 LOOP
        dbms_output.put_line(count_num);
        count_num := count_num-1;
    end loop;
END;

-- ** CONTINUE STATEMENT - skips the current iteration **

DECLARE
    i number := 1;
BEGIN
    while i<=10 LOOP
        if i=4 then
            i := i+1;
            CONTINUE;
        end if;

        dbms_output.put_line('number: '|| i);
        i := i+1;
    end loop;
END;

-- ** EXIT STATEMENT - exits the current loop completely **

DECLARE
    i number := 1;
BEGIN
    while i<=10 LOOP
        if i=4 then
            i := i+1;
            EXIT;
        end if;

        dbms_output.put_line('number: '|| i);
        i := i+1;
    end loop;
END;

-- ** Prints even numbers between 2 and 10 **

DECLARE
    num number := 2;
BEGIN
    while num <= 10 LOOP
      if MOD(num, 2) = 1 then
         EXIT;
      end if;

      dbms_output.put_line('Even: ' || num);
      num := num + 1;
    end loop;
END;

-- ** Gives the numbers that are divisible by 3 **

DECLARE
   num number := 1;
BEGIN
    while num <= 6 LOOP
        if MOD(num, 3) = 0 then
            num := num + 1;
            CONTINUE;
        end if;
        dbms_output.put_line('Not divisible by 3: ' || num);
        num := num + 1;
    end loop;
END;

-- ** finds the sum and exits based on if condition **

DECLARE
   i number := 1;
   sum number := 0;
BEGIN
    while i <= 10 LOOP
      sum := sum + i;
        if sum > 10 then
            EXIT;
        end if;
        dbms_output.put_line('Sum: ' || sum);
        i := i + 1;
    end LOOP;
END;

-- ** While loop using IN operator ** 

DECLARE
   i number := 1;
BEGIN
    While i <= 5 LOOP
        if i IN (2, 4) then
            i := i + 1;
            CONTINUE;
        end if;
        dbms_output.put_line('i: ' || i);
        i := i + 1;
    end LOOP;
END;