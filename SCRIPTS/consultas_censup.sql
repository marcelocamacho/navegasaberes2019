
-- Tabela ies, cursos, local_oferta
select 
'2010'::varchar as ano,
curso.co_ies,
curso.no_ies,
curso.co_categoria_administrativa,
curso.ds_categoria_administrativa,
curso.co_organizacao_academica,
curso.ds_organizacao_academica,
curso.co_curso,
curso.no_curso,
curso.co_municipio_curso,
curso.no_municipio_curso,
curso.co_local_oferta_ies,
local_oferta.co_municipio_local_oferta,
local_oferta.no_municipio_local_oferta,
local_oferta.in_sede,
curso.in_oferece_disc_distancia,
curso.qt_inscritos_ano_ead,
curso.qt_matricula_curso,
curso.qt_concluinte_curso,
curso.qt_ingresso_curso
from para.curso_2010 curso 
left join para.ies_2010 ies using (co_ies)
left join para.local_oferta_2010 local_oferta using (co_ies,co_curso,co_local_oferta_ies)

-- Tabela de alunos
select
co_ies,
co_curso,
co_curso_polo,
co_modalidade_ensino,
in_apoio_social,
in_apoio_bolsa_permanencia,
in_apoio_alimentacao,
in_apoio_bolsa_trabalho,
in_apoio_moradia,
in_bolsa_estagio,
in_bolsa_extensao,
in_bolsa_monitoria,
in_bolsa_pesquisa,
in_matricula,
in_concluinte
from para.aluno_2010
where co_nivel_academico='1'--graduação 
and co_aluno_situacao='2' -- cursando 
and co_curso_polo is not null

-- todos os alunos
select '2010'::varchar as ano, co_ies,co_curso,co_curso_polo, co_modalidade_ensino, count(co_aluno) as qtd_alunos_cursando
from para.aluno_2010 
where co_nivel_academico='1' and co_aluno_situacao='2' 
group by 1,2,3,4,5

-- Alunos com bolsa de apoio social
select '2010'::varchar as ano, co_ies,co_curso,co_curso_polo, co_modalidade_ensino, count(co_aluno) as qtd_alunos_com_apoio_social
from para.aluno_2010 
where co_nivel_academico='1' and co_aluno_situacao='2' and in_apoio_social='1'
group by 1,2,3,4,5

-- Alunos com bolsa de ensino, pesquisa, extensão ou monitoria
select '2010'::varchar as ano, co_ies,co_curso,co_curso_polo, co_modalidade_ensino, count(co_aluno) as qtd_alunos_com_bolsa
from para.aluno_2010 
where co_nivel_academico='1' and co_aluno_situacao='2' and (in_bolsa_estagio='1' or in_bolsa_extensao='1' or in_bolsa_monitoria='1' or in_bolsa_pesquisa='1')
group by 1,2,3,4,5
