-- ВИВЕСТИ ДАТУ ТА "META"-РЕЙТИНГИ ПЕВНОЇ ГРИ

drop procedure if exists game_date_and_rating(varchar);
create or replace procedure game_date_and_rating(game_ varchar)
language plpgsql
as $$
	declare date_ date.date%type;
	declare u_s meta_rating.user_score%type;
	declare m_s meta_rating.meta_score%type;
	begin
		select date, user_score, meta_score into date_, u_s, m_s from game cross join
		(select * from game
		cross join date
		where game.game_id = date.game_id and game_name = trim(game_)) as t
		cross join meta_rating
		where game.game_id = meta_rating.game_id and game.game_name = trim(game_);
		raise info 'Game: %, date: %, user_score: %, meta_sore: %', trim(game_), trim(date_), u_s, m_s;
	end;
$$;

call game_date_and_rating('Final Fantasy Tactics Advance');