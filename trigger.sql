-- ДОДАТИ ".INC" ДО НАЗВИ РОЗРОБНИКА --

create or replace function add_current_time() returns trigger
language 'plpgsql'
as
$$
begin
	update developer set dev_name = dev_name || ' ' || 'Inc.'
	where developer.dev_name = new.dev_name;
	return null; 
end;
$$;

create or replace trigger on_date_added
after insert on developer
for each row execute function add_current_time();

insert into Developer(dev_id, dev_name) values (100, 'Google');

select * from developer;