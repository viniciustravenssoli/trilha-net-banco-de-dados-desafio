--> 1
select Nome, Ano
from Filmes

--> 2
select Nome, Ano
from Filmes
order by Ano Asc

--> 3
select Nome, Ano, Duracao
from Filmes
where Nome = 'De volta para o futuro'

--> 4
select *
from Filmes
where Ano = 1997

--> 5
select *
from Filmes
where Ano > 2000

--> 6
select *
from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

--> 7

select Ano, count(*) qntd
from Filmes
group by Ano
order by MAX(Duracao) desc

--> segundo 7 pois não entendi ao certo a questao

select Ano, count(*) qntd
from Filmes
group by Ano
order by qntd desc

--> 8
select PrimeiroNome, UltimoNome
from Atores
where Genero = 'm'

--> 9

select PrimeiroNome, UltimoNome
from Atores
where Genero = 'f'
order by PrimeiroNome

--> 10

select Nome, Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id

select F.Nome as Filme, G.Genero as Genero
from Filmes as F
inner join FilmesGenero as FG on F.Id = FG.IdFilme
inner join Generos as G on FG.IdGenero = G.Id


--> 11

select Nome, Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério';


select F.Nome as Filme, G.Genero as Genero
from Filmes as F
inner join FilmesGenero as FG on F.Id = FG.IdFilme
inner join Generos as G on FG.IdGenero = G.Id
where G.Genero = 'Mistério';

--> 12

select Nome, PrimeiroNome, UltimoNome, Papel
from Atores
inner join ElencoFilme on Atores.Id = ElencoFilme.IdAtor
inner join Filmes on Atores.Id = Filmes.Id

select f.Nome as Filme, A.PrimeiroNome as PrimeiroNome, A.UltimoNome as UltimoNome, EF.Papel as Papel
from Atores as A
inner join ElencoFilme as EF on A.Id = EF.IdAtor
inner join Filmes as F on A.Id = F.Id