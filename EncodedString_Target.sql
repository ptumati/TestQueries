/* Encoded String Tests */


create table textenc ( s1 text encoding dict(32), s2 text encoding dict(16), s3 text encoding dict(8) ) with (vacuum='delayed');
insert into textenc values ( 'kanye', 'omari', 'west' );

/*
 * Literal Assignment Tests 
 */

/* Dict 32 from Literal */
update textenc set s1 = 'the';
select s1 from textenc where s1 = 'the';

/* Dict 16 from Literal */
update textenc set s2 = 'college';
select s2 from textenc where s2 = 'college';

/* Dict 8 from Literal */
update textenc set s3 = 'dropout';
select s3 from textenc where s3 = 'dropout';

/*
 * Test Alternate Encoded Columns Assignment
 */

/* Expect college */
update textenc set s1 = s2; 
select s1 from textenc where s1='college';

/* Expect dropout */
update textenc set s2 = s3;
select s2 from textenc where s2='dropout';

update textenc set s3 = s1;
select s3 from textenc where s3='college';

/*
 * Dict 32 Assignment from other types
 */
update textenc set s1=cast('1977-06-08 00:00:00' as timestamp);
select s1 from textenc;

update textenc set s1=cast('12:34:56' as time);
select s1 from textenc;

update textenc set s1=cast('1977-06-08' as date);
select s1 from textenc;

update textenc set s1=cast( 1234.00 as float );
select s1 from textenc;

update textenc set s1=cast( 12345.00 as double );
select s1 from textenc;

update textenc set s1=cast( 1234 as integer );
select s1 from textenc;

update textenc set s1=cast( 12 as smallint );
select s1 from textenc;

update textenc set s1=cast( 123412341234 as bigint );
select s1 from textenc;

update textenc set s1=cast( 'True' as boolean );
select s1 from textenc;

update textenc set s1=cast( 1234.56 as decimal );
select s1 from textenc;

/*
 * Dict 16 Assignment from other types
 */

update textenc set s2=cast('1977-06-08 00:00:00' as timestamp);
select s2 from textenc;

update textenc set s2=cast('12:34:56' as time);
select s2 from textenc;

update textenc set s2=cast('1977-06-08' as date);
select s2 from textenc;

update textenc set s2=cast( 1234.00 as float );
select s2 from textenc;

update textenc set s2=cast( 12345.00 as double );
select s2 from textenc;

update textenc set s2=cast( 1234 as integer );
select s2 from textenc;

update textenc set s2=cast( 12 as smallint );
select s2 from textenc;

update textenc set s2=cast( 123412341234 as bigint );
select s2 from textenc;

update textenc set s2=cast( 'True' as boolean );
select s2 from textenc;

update textenc set s2=cast( 1234.56 as decimal );
select s2 from textenc;

/*
 * Dict 8 Assignment from other types 
 */

update textenc set s3=cast('1977-06-08 00:00:00' as timestamp);
select s3 from textenc;

update textenc set s3=cast('12:34:56' as time);
select s3 from textenc;

update textenc set s3=cast('1977-06-08' as date);
select s3 from textenc;

update textenc set s3=cast( 1234.00 as float );
select s3 from textenc;

update textenc set s3=cast( 12345.00 as double );
select s3 from textenc;

update textenc set s3=cast( 1234 as integer );
select s3 from textenc;

update textenc set s3=cast( 12 as smallint );
select s3 from textenc;

update textenc set s3=cast( 123412341234 as bigint );
select s3 from textenc;

update textenc set s3=cast( 'True' as boolean );
select s3 from textenc;

update textenc set s3=cast( 1234.56 as decimal );
select s3 from textenc;
