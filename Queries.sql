-- query 1 --
select Nome, Ano from Filmes

-- query 2 --
select Nome, Ano, Duracao from Filmes 
order by ano asc

-- query 3 --
select Nome, Ano, Duracao from Filmes 
where Nome = 'De Volta para o Futuro'

-- query 4 --
select Nome, Ano, Duracao from Filmes 
where Ano = '1997'

-- query 5 --
select Nome, Ano, Duracao from Filmes 
where Ano > 2000

-- query 6 --
select Nome, Ano, Duracao from Filmes 
where Duracao > 100 and Duracao < 150
order by Duracao asc

-- query 7 --
select 
	Ano,
	COUNT(*) Quantidade
from Filmes
group by Ano
order by Quantidade desc

-- query 8 --
select PrimeiroNome, UltimoNome, Genero from Atores
where Genero = 'M'

-- query 9 --
select PrimeiroNome, UltimoNome, Genero from Atores
where Genero = 'F' order by PrimeiroNome asc

-- query 10 --
select 
	F.Nome,
	G.Genero
from Filmes as F
INNER JOIN FilmesGenero as FG
	on F.Id = FG.IdFilme
INNER JOIN Generos as G
	on G.Id = FG.IdGenero

-- query 11 --
select
	F.Nome,
	G.Genero
from FILMES as F
INNER JOIN FilmesGenero as FG
	on F.Id = FG.IdFilme
INNER JOIN Generos as G
	on G.Id = FG.IdGenero
where G.Genero = 'Mistério'

-- query 12 --
select
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
from Filmes as F
inner join ElencoFilme as EF
	on F.Id = EF.IdFilme
inner join Atores as A
	on A.Id = EF.IdAtor