SELECT Nome, Ano FROM Filmes;

SELECT * FROM Filmes
ORDER BY Ano

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes
WHERE Ano = 1997

SELECT * FROM Filmes 
WHERE Ano > 2000

SELECT * FROM Filmes
Where Duracao > 100 AND Duracao < 150
ORDER BY Duracao

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'

SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

SELECT * FROM Atores
SELECT * FROM Filmes

SELECT 
    Filmes.Nome, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome, 
    ElencoFilme.Papel
FROM 
    Filmes
INNER JOIN 
    ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id;
