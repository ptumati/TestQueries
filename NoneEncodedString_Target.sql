/* None Encoded String Tests (NEST) */

/* (NEST) From a string */
create table none_str ( str text encoding none ) with (vacuum='delayed');
insert into none_str values ('kanye');
update none_str set str='yeezy';
update none_str set str='yeezy' where str='kanye';

/* (NEST) From Timestamp */
update none_str set str=cast('1977-06-08 00:00:00' as timestamp);
select str from none_str;

update none_str set str=cast('12:34:56' as time);
select str from none_str;

update none_str set str=cast('1977-06-08' as date);
select str from none_str;

update none_str set str=cast( 1234.00 as float );
select str from none_str;

update none_str set str=cast( 12345.00 as double );
select str from none_str;

update none_str set str=cast( 1234 as integer );
select str from none_str;

update none_str set str=cast( 12 as smallint );
select str from none_str;

update none_str set str=cast( 123412341234 as bigint );
select str from none_str;

update none_str set str=cast( 'True' as boolean );
select str from none_str;

update none_str set str=cast( 1234.56 as decimal );
select str from none_str;

