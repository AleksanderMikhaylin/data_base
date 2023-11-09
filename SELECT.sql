-- Задание 2
-- 1. Название и продолжительность самого длительного трека
select t.name, t.track_duration
from tracks t
	where t.track_duration = (select max(t2.track_duration) from tracks t2)
	
-- 2. Название треков, продолжительность которых не менее 3,5 минут.
select t.name, t.track_duration
from tracks t
where t.track_duration >= 210
		
-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select c.name
from collections c
where c.year_of_manufacture between 2018 and 2020  
		
-- 4. Исполнители, чьё имя состоит из одного слова
select p.name 
from performers p
where not p.name like '% %'

-- 5. Название треков, которые содержат слово «мой» или «my»
select t.name 
from tracks t
where lower(t.name) like '%мой%' or lower(t.name) like '%my%'
		

-- Задание 3
-- 1. Количество исполнителей в каждом жанре
select count(*), lgp.genre_id 
from list_genres_performers lgp
group by lgp.genre_id
	
-- 2. Количество треков, вошедших в альбомы 2019–2020 годов
select count(distinct t.id) 
from tracks t
	join albums a 
		on t.album_id = a.id
		and a.year_of_manufacture between 2019 and 2020
			
-- 3. Средняя продолжительность треков по каждому альбому
select a.name, avg(t.track_duration) as avg_track_duration 
from tracks t 
	left join albums a 
		on t.album_id = a.id 
group by a.name
	
	
-- 4. Все исполнители, которые не выпустили альбомы в 2020 году
select p.name  
from performers p
	left join list_albums_performers lap 
		on p.id = lap.performer_id
		and lap.album_id in (select a2.id from albums a2 where a2.year_of_manufacture = 2020)
where lap.album_id is null

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select c.name
from collections c
	join list_tracks_collections ltc  
		join tracks t 
			join albums a 
				join list_albums_performers lap 
					join performers p 
						on lap.performer_id = p.id 
						and p.name = 'Шнур'
					on a.id = lap.album_id 
				on t.album_id = a.id 
			on ltc.track_id = t.id 
		on c.id = ltc.collectoin_id 
group by c.name 
	
-- Задание 4
-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра
select a.name  
from albums a 
	join list_albums_performers lap 
		join performers p 
			on lap.performer_id = p.id 
			and lap.performer_id in (select lgp.performer_id 
									from list_genres_performers lgp 
									group by lgp.performer_id
									having count(lgp.genre_id) > 1) 
		on a.id = lap.album_id 
	
	
-- 2. Наименования треков, которые не входят в сборники.
select t.name
from tracks t
	left join list_tracks_collections ltc 
		on t.id = ltc.track_id 
where ltc.collectoin_id is null		

-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select p.name, t.name, t.track_duration 
from performers p 
	join list_albums_performers lap
		join albums a
			join tracks t 
				on a.id = t.album_id 
				and t.track_duration in (select min(track_duration) from tracks)
			on lap.album_id = a.id 
		on p.id = lap.performer_id 

		
-- 4. Названия альбомов, содержащих наименьшее количество треков
select a.name, t.album_id, count(t.id) 
from tracks t
	join albums a 
		on t.album_id = a.id 
group by t.album_id, a.name
having count(t.id) in (select min(sel_cnt.cnt) from (select album_id, count(id) as cnt from tracks group by album_id) as sel_cnt)
		
		
