
insert into albums values(1, 'Не Париж', 2018);
insert into albums values(2, 'Вояж', 2017);
insert into albums values(3, 'Кольщик', 2016);
insert into albums values(4, 'Угонщица', 2020);
insert into albums values(5, 'Императрица', 2019);
insert into albums values(6, 'В центре Земли', 2006);
insert into albums values(7, 'Парус', 2004);
insert into albums values(8, 'Тоска', 2002);
insert into albums values(9, 'Прости и отпусти', 2016);
insert into albums values(10, 'Суженный мой', 2021);
insert into albums values(11, 'Гугуша', 2020);

insert into tracks values(1, 1, 'Не Париж', 239);
insert into tracks values(2, 2,	'Вояж', 300);
insert into tracks values(3, 4,	'Сквозняки', 250);
insert into tracks values(4, 4,	'Войди в меня', 310);
insert into tracks values(5, 5,	'Подари эту ночь', 315);
insert into tracks values(6, 5,	'Отпусти меня', 305);
insert into tracks values(7, 5,	'Купи девчоночку', 295);
insert into tracks values(8, 9,	'Как у других', 245);
insert into tracks values(9, 9,	'Резиновые дни', 260);
insert into tracks values(10, 10,	'Мой ласковый и нежный зверь', 244);
insert into tracks values(11, 11,	'Гугуша', 239);

insert into collections values(1, 'Сборник Поп', 2020);
insert into collections values(2, 'Сборник Рок', 2019);
insert into collections values(3, 'Сборник Шансон', 2018);
insert into collections values(4, 'Сборник Блюз', 2005);
insert into collections values(5, 'Сборник Кантри', 2023);
insert into collections values(6, 'Сборник Все песни', 2023);

insert into genres values(1, 'Шансон');
insert into genres values(2, 'Рок-музыка');
insert into genres values(3, 'Поп-музыка');
insert into genres values(4, 'Кантри');
insert into genres values(5, 'Блюз');

insert into performers values(1, 'Шнур');
insert into performers values(2, 'Филипп Киркоров');
insert into performers values(3, 'Лепс');
insert into performers values(4, 'Ирина Аллегрова');
insert into performers values(5, 'Игорь Николаев');
insert into performers values(6, 'Наталья Королева');
insert into performers values(7, 'Юрий Лоза');
insert into performers values(8, 'Максим Фадеев');

insert into list_albums_performers values(1, 1);
insert into list_albums_performers values(1, 2);
insert into list_albums_performers values(1, 3);
insert into list_albums_performers values(3, 6);
insert into list_albums_performers values(3, 7);
insert into list_albums_performers values(4, 4);
insert into list_albums_performers values(4, 5);
insert into list_albums_performers values(7, 9);
insert into list_albums_performers values(4, 10);
insert into list_albums_performers values(8, 11);

insert into list_genres_performers values(1, 2);
insert into list_genres_performers values(2, 3);
insert into list_genres_performers values(3, 1);
insert into list_genres_performers values(4, 5);
insert into list_genres_performers values(5, 4);
insert into list_genres_performers values(6, 3);
insert into list_genres_performers values(7, 5);
insert into list_genres_performers values(1, 3);
insert into list_genres_performers values(4, 2);
insert into list_genres_performers values(4, 3);

insert into list_tracks_collections values(1, 1);
insert into list_tracks_collections values(1, 2);
insert into list_tracks_collections values(1, 3);
insert into list_tracks_collections values(1, 4);
insert into list_tracks_collections values(2, 2);
insert into list_tracks_collections values(1, 5);
insert into list_tracks_collections values(3, 7);
insert into list_tracks_collections values(3, 8);
insert into list_tracks_collections values(4, 9);
insert into list_tracks_collections values(5, 3);
insert into list_tracks_collections values(5, 8);
insert into list_tracks_collections values(6, 1);
insert into list_tracks_collections values(6, 2);
insert into list_tracks_collections values(6, 3);
insert into list_tracks_collections values(6, 4);
insert into list_tracks_collections values(6, 5);
insert into list_tracks_collections values(6, 6);
insert into list_tracks_collections values(6, 7);
insert into list_tracks_collections values(6, 8);
insert into list_tracks_collections values(6, 9);
insert into list_tracks_collections values(6, 10);