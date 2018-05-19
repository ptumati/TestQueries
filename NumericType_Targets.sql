create table floattest ( f float ) with (vacuum='delayed');
insert into floattest values ( 0.1234 );

update floattest set f=cast( 'nonsense' as varchar );
update floattest set f=cast( '128.90' as varchar );
update floattest set f=cast ('2000-01-01 10:11:12' as timestamp );
update floattest set f=cast ('12:34:56' as time );
update floattest set f=cast ('1999-12-31' as date);
update floattest set f=cast (1234.0 as float);
update floattest set f=cast (1234.0 as double);
update floattest set f=cast(56780 as integer);
update floattest set f=cast(12345 as smallint);
update floattest set f=cast(12345 as bigint);
update floattest set f=cast('True' as boolean);
update floattest set f=cast(1234.00 as decimal);

create table doubletest ( d double ) with (vacuum='delayed');
insert into doubletest values ( 0.1234 );

update doubletest set d=cast( 'nonsense' as varchar );
update doubletest set d=cast( '128.90' as varchar );
update doubletest set d=cast( '2000-01-01 10:11:12' as timestamp );
update doubletest set d=cast( '12:34:56' as time );
update doubletest set d=cast( '1999-12-31' as date );
update doubletest set d=cast( 1234.0 as float );
update doubletest set d=cast( 1234.0 as double );
update doubletest set d=cast( 56780 as integer );
update doubletest set d=cast( 12345 as smallint );
update doubletest set d=cast( 12345 as bigint );
update doubletest set d=cast( 'True' as boolean );
update doubletest set d=cast( 1234.00 as decimal );

create table inttest ( i integer ) with (vacuum='delayed');
insert into inttest values ( 1234 );

update inttest set i=cast( 'nonsense' as varchar );
update inttest set i=cast( '128.90' as varchar );
update inttest set i=cast( '2000-01-01 10:11:12' as timestamp );
update inttest set i=cast( '12:34:56' as time );
update inttest set i=cast( '1999-12-31' as date );
update inttest set i=cast( 1234.0 as float );
update inttest set i=cast( 1234.0 as double );
update inttest set i=cast( 56780 as integer );
update inttest set i=cast( 12345 as smallint );
update inttest set i=cast( 12345 as bigint );
update inttest set i=cast( 'True' as boolean );
update inttest set i=cast( 1234.00 as decimal );

create table sinttest ( i integer ) with (vacuum='delayed');
insert into sinttest values ( 1234 );

update sinttest set i=cast( 'nonsense' as varchar );
update sinttest set i=cast( '128.90' as varchar );
update sinttest set i=cast( '2000-01-01 10:11:12' as timestamp );
update sinttest set i=cast( '12:34:56' as time );
update sinttest set i=cast( '1999-12-31' as date );
update sinttest set i=cast( 1234.0 as float );
update sinttest set i=cast( 1234.0 as double );
update sinttest set i=cast( 56780 as integer );
update sinttest set i=cast( 12345 as smallint );
update sinttest set i=cast( 12345 as bigint );
update sinttest set i=cast( 'True' as boolean );
update sinttest set i=cast( 1234.00 as decimal );

create table binttest ( i integer ) with (vacuum='delayed');
insert into binttest values ( 1234 );

update binttest set i=cast( 'nonsense' as varchar );
update binttest set i=cast( '128.90' as varchar );
update binttest set i=cast( '2000-01-01 10:11:12' as timestamp );
update binttest set i=cast( '12:34:56' as time );
update binttest set i=cast( '1999-12-31' as date );
update binttest set i=cast( 1234.0 as float );
update binttest set i=cast( 1234.0 as double );
update binttest set i=cast( 56780 as integer );
update binttest set i=cast( 12345 as smallint );
update binttest set i=cast( 12345 as bigint );
update binttest set i=cast( 'True' as boolean );
update binttest set i=cast( 1234.00 as decimal );

create table booltest ( b boolean ) with (vacuum='delayed');
insert into booltest values ( 'True' );

update booltest set b=cast( 'nonsense' as varchar );
update booltest set b=cast( '128.90' as varchar );
update booltest set b=cast( '2000-01-01 10:11:12' as timestamp );
update booltest set b=cast( '12:34:56' as time );
update booltest set b=cast( '1999-12-31' as date );
update booltest set b=cast( 1234.0 as float );
update booltest set b=cast( 1234.0 as double );
update booltest set b=cast( 56780 as integer );
update booltest set b=cast( 12345 as smallint );
update booltest set b=cast( 12345 as bigint );
update booltest set b=cast( 'True' as boolean );
update booltest set b=cast( 1234.00 as decimal );

create table dectest ( d decimal(10) ) with (vacuum='delayed');
insert into dectest values ( '1234.0' );

update dectest set d=cast( 'nonsense' as varchar );
update dectest set d=cast( '128.90' as varchar );
update dectest set d=cast( '2000-01-01 10:11:12' as timestamp );
update dectest set d=cast( '12:34:56' as time );
update dectest set d=cast( '1999-12-31' as date );
update dectest set d=cast( 1234.0 as float );
update dectest set d=cast( 1234.0 as double );
update dectest set d=cast( 56780 as integer );
update dectest set d=cast( 12345 as smallint );
update dectest set d=cast( 12345 as bigint );
update dectest set d=cast( 'True' as boolean );
update dectest set d=cast( 1234.00 as decimal );




