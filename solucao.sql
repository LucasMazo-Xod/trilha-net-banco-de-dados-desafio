--1
select Nome, Ano
from Filmes.dbo.Filmes

--2
select Nome, Ano, Duracao
from Filmes.dbo.Filmes
order by 2

--3
select Nome, Ano, Duracao
from Filmes.dbo.Filmes
where Nome = 'De Volta Para o Futuro'

--4
select Nome, Ano, Duracao
from Filmes.dbo.Filmes
where Ano = 1997

--5
select Nome, Ano, Duracao
from Filmes.dbo.Filmes
where Ano > 2000

--6
select Nome, Ano, Duracao
from Filmes.dbo.Filmes
where Duracao > 100
and Duracao < 150
order by Duracao

--7
SELECT 
Ano,
Quantidade = COUNT(Nome)
from Filmes.dbo.Filmes
group by Ano
order by COUNT(Nome) desc

--8
select *
from Filmes.dbo.Atores
where Genero = 'M'

--9
select *
from Filmes.dbo.Atores
where Genero = 'F'
order by PrimeiroNome

--10
select 
f.Nome
,g.Genero
from Filmes.dbo.FilmesGenero	FG
join Filmes.dbo.Filmes			F	ON F.Id = FG.IdFilme
JOIN Filmes.dbo.Generos			G	on G.Id	= FG.IdGenero

--11
select 
f.Nome
,g.Genero
from Filmes.dbo.FilmesGenero	FG
join Filmes.dbo.Filmes			F	ON F.Id = FG.IdFilme
JOIN Filmes.dbo.Generos			G	on G.Id	= FG.IdGenero
where g.Genero = 'Mistério'

--12
select
f.Nome
,a.PrimeiroNome
,a.UltimoNome
,ef.Papel
from filmes.dbo.ElencoFilme	ef
join Filmes.dbo.Atores		A	on A.Id = ef.IdAtor
join Filmes.dbo.Filmes		f	on f.Id = ef.IdFilme
