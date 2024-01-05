-- ВИВЕСТИ НАЗВИ ІГОР, ЩО ВІДПОВІДАЮТЬ ПЕВНІЙ ПЛАТФОРМІ --

create or replace function get_by_platform(platform varchar)
	returns table (game varchar)
language plpgsql
as $$
begin
	return query
	select game_name::varchar from game where platform_name = platform;
end;
$$;

select * from get_by_platform('GBA');