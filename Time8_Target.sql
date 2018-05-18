create table timetab ( t1 time ) with ( vacuum='delayed' );
insert into timetab values ('01:23:45');

update timetab set t1='nonsense';
select t1 from timetab;

/* Wacky parse; needs correcting */
update timetab set t1=cast( '1999-12-31 23:59:59' as varchar(32) );
select t1 from timetab;

update timetab set t1=cast( '1990-12-31 23:59:59' as char(32) );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( '1989-01-01 00:00:00' as timestamp );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( '2000' as date );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( 2000.00 as float );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( 2123.444 as double );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( 1235 as integer );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( 12 as smallint );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( 9 as bigint );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( 'False' as boolean );
select t1 from timetab;

/* Invalid cast, but could be enabled in the future */
update timetab set t1=cast( '1234.00' as decimal );
select t1 from timetab;



