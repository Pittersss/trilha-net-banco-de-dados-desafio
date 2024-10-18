-- 1° Consulta
SELECT Nome, Ano FROM Filmes

-- 2° Consulta
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

-- 3° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
Where nome = 'De Volta para o Futuro'

-- 4° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
Where Ano = 1997

-- 5° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
Where Ano > 2000

-- 6° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC

-- 7° Consulta
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC --Acredito que o enunciado deve estar errado
						 --ORDER BY Duracao DESC Não Funciona

-- 8° Consulta
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9° Consulta
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10° Consulta
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11° Consulta
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- 12° Consulta
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor