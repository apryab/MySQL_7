DELIMITER ||
create trigger custom_trig before update on products
for each row
begin
	if(new.field1 is null) & (new.field2 is null) then
		set new.field1 = 'hahaher';
        signal sqlstate '45000' set message_text = 'update cancelled';
	else if (new.field1 is null) & (old.field2 is null) then
		signal sqlstate '45000' set message_text = 'update cancelled';
	else if (old.field1 is null) & (new.field2 is null) then
		signal sqlstate '45000' set message_text = 'update cancelled';
	end if;
	end if;
    end if;
end
||
DELIMITER ;


