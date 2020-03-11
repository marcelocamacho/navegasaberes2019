create schema brasil;
create table brasil.categoria_modalidade as (
select 
--ds_organizacao_academica,--(Faculdade,Universidade,Centro Universitário, Instituto Federal)
no_regiao_ies,
sgl_uf_ies,
case when a.co_categoria_administrativa in ('1','2') then 'Publica'
	when a.co_categoria_administrativa in ('4','5') then 'Privada'
	else 'Não declarado'
end as categoria_administrativa,
--co_grau_academico,--Bacharelado, licenciatura, tecnológico outros
case when a.co_modalidade_ensino='1' then 'Presencial'
	when a.co_modalidade_ensino='2' then 'Distancia'
	else 'Não declarado'
end as modalidade_ensino,
sum(qt_tec_total::integer) as qtd_tec_total,
count(co_docente) as qtd_docente,
count(distinct(a.co_ies)) as qtd_ies,
count(distinct(a.co_curso)) as qtd_curso,
count(a.co_aluno) as qtd_aluno
from censup.dm_aluno_2010 a
join censup.dm_ies_2010 b using(co_ies)
join censup.dm_docente_2010 c using(co_ies)
where a.co_nivel_academico='1' --graduação
group by 1,2,3,4
order by 1,2,3,4
);