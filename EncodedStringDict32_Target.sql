
create table textenc32 ( str text encoding fixed(32),  ) with (vacuum='delayed');
insert into textenc32 values ('kanye','west','maga');

update textenc32 set str = 'yeezy';
select str from textenc32 where str='yeezy';
select count( str ) from textenc32 where str='yeezy';

