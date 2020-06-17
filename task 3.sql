DELIMITER ||
CREATE FUNCTION hello()
RETURNS varchar(255) deterministic
BEGIN
	declare temp varchar(255);
    if(hour(now())<12) & (hour(now())>=6) then
		set temp = 'Доброе утро';
	end if;
    if(hour(now())>=12) & (hour(now())<18) then
		set temp = 'Добрый день';
	end if;
    if(hour(now())>=18) & (hour(now())<24) then
		set temp = 'Добрый вечер';
	end if;
    if(hour(now())>=0) & (hour(now())<6) then
		set temp = 'Доброй ночи';
	end if;
    RETURN temp;
END;
||
DELIMITER ;

