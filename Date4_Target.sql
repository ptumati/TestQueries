create table date4 ( d1 date encoding fixed(32) ) with ( vacuum='delayed' );
insert into date4 values ('2000-01-01 00:00:00');

update date4 set d1='nonsense';
select d1 from date4;

update date4 set d1=cast( '1999-12-31 23:59:59' as varchar(32) );
select d1 from date4;

update date4 set d1=cast( '1990-12-31 23:59:59' as char(32) );
select d1 from date4;


/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( '1989-01-01 00:00:00' as timestamp );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( '2000' as date );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( 2000.00 as float );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( 2123.444 as double );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( 1235 as integer );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( 12 as smallint );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( 9 as bigint );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( 'False' as boolean );
select d1 from date4;

/* Invalid cast, but could be enabled in the future */
update date4 set d1=cast( '1234.00' as decimal );
select d1 from date4;
