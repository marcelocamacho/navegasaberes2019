create schema para;

create table para.ies_2010 as (
	select * from censup.dm_ies_2010 where co_uf_ies='15'
);

create table para.ies_2011 as (
	select * from censup.dm_ies_2011 where co_uf_ies='15'
);

create table para.ies_2012 as (
	select * from censup.dm_ies_2012 where co_uf_ies='15'
);

create table para.ies_2013 as (
	select * from censup.dm_ies_2013 where co_uf_ies='15'
);

create table para.ies_2014 as (
	select * from censup.dm_ies_2014 where co_uf_ies='15'
);

create table para.ies_2015 as (
	select * from censup.dm_ies_2015 where co_uf_ies='15'
);
create table para.ies_2016 as (
	select * from censup.dm_ies_2016 where co_uf_ies='15'
);
create table para.ies_2017 as (
	select * from censup.dm_ies_2017 where co_uf='15'
);

create table para.curso_2010 as (
	select * from censup.dm_curso_2010 where co_ies in (select distinct(co_ies) from para.ies_2010)
);
create table para.curso_2011 as (
	select * from censup.dm_curso_2011 where co_ies in (select distinct(co_ies) from para.ies_2011)
);
create table para.curso_2012 as (
	select * from censup.dm_curso_2012 where co_ies in (select distinct(co_ies) from para.ies_2012)
);
create table para.curso_2013 as (
	select * from censup.dm_curso_2013 where co_ies in (select distinct(co_ies) from para.ies_2013)
);
create table para.curso_2014 as (
	select * from censup.dm_curso_2014 where co_ies in (select distinct(co_ies) from para.ies_2014)
);
create table para.curso_2015 as ( 
	select * from censup.dm_curso_2015 where co_ies in (select distinct(co_ies) from para.ies_2015)
);
create table para.curso_2016 as ( 
	select * from censup.dm_curso_2016 where co_ies in (select distinct(co_ies) from para.ies_2016)
);
create table para.curso_2017 as ( 
	select * from censup.dm_curso_2017 where co_ies in (select distinct(co_ies) from para.ies_2017)
);

create table para.docente_2010 as (
	select * from censup.dm_docente_2010 where co_ies in (select distinct(co_ies) from para.ies_2010)
);

create table para.docente_2011 as (
	select * from censup.dm_docente_2011 where co_ies in (select distinct(co_ies) from para.ies_2011)
);
create table para.docente_2012 as (
	select * from censup.dm_docente_2012 where co_ies in (select distinct(co_ies) from para.ies_2012)
);
create table para.docente_2013 as (
	select * from censup.dm_docente_2013 where co_ies in (select distinct(co_ies) from para.ies_2013)
);

create table para.docente_2014 as (
	select * from censup.dm_docente_2014 where co_ies in (select distinct(co_ies) from para.ies_2014)
);
create table para.docente_2015 as (
	select * from censup.dm_docente_2015 where co_ies in (select distinct(co_ies) from para.ies_2015)
);
create table para.docente_2016 as (
	select * from censup.dm_docente_2016 where co_ies in (select distinct(co_ies) from para.ies_2016)
);
create table para.docente_2017 as (
	select * from censup.dm_docente_2017 where co_ies in (select distinct(co_ies) from para.ies_2017)
);

create table para.local_oferta_2010 as (
	select * from censup.dm_local_oferta_2010 where co_ies in (select distinct(co_ies) from para.ies_2010)
);

create table para.local_oferta_2011 as (
	select * from censup.dm_local_oferta_2011 where co_ies in (select distinct(co_ies) from para.ies_2011)
);

create table para.local_oferta_2012 as (
	select * from censup.dm_local_oferta_2012 where co_ies in (select distinct(co_ies) from para.ies_2012)
);

create table para.local_oferta_2013 as (
	select * from censup.dm_local_oferta_2013 where co_ies in (select distinct(co_ies) from para.ies_2013)
);

create table para.local_oferta_2014 as (
	select * from censup.dm_local_oferta_2014 where co_ies in (select distinct(co_ies) from para.ies_2014)
);

create table para.local_oferta_2015 as (
	select * from censup.dm_local_oferta_2015 where co_ies in (select distinct(co_ies) from para.ies_2015)
);

create table para.local_oferta_2016 as (
	select * from censup.dm_local_oferta_2016 where co_ies in (select distinct(co_ies) from para.ies_2016)
);

create table para.local_oferta_2017 as (
	select * from censup.dm_local_oferta_2017 where co_ies in (select distinct(co_ies) from para.ies_2017)
);

create table para.aluno_2010 as (
	select * from censup.dm_aluno_2010 where co_ies in (select distinct(co_ies) from para.ies_2010)
);

create table para.aluno_2015 as (
	select * from censup.dm_aluno_2015 where co_ies in (select distinct(co_ies) from para.ies_2015)
);
create table para.aluno_2017 as (
	select * from censup.dm_aluno_2017 where co_ies in (select distinct(co_ies) from para.ies_2017)
);


