create table if not exists item (
  id int primary key generated by default as identity, 
  publish_date date not null,
  archived bool not null
);

create table if not exists game (
  id int primary key generated by default as identity,
  multiplayer bool not null,
  last_played_at date not null,
  item_id int not null,
  constraint fk_game_item foreign key(item_id) references item(id) on delete cascade
);

create table if not exists author (
  id int primary key generated by default as identity,
  first_name text not null,
  last_name text not null
);

create table if not exists genre (
  id int primary key generated by default as identity,
  name varchar(255) not null
);

create  table if not exists musicalbum (
  id int primary key generated by default as identity,
  on_spotify boolean not null,
  genre_id int not null,
  constraint fk_music_genre foreign key(genre_id) references genre(id) on delete cascade
);