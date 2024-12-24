~~ All genre with the number of movies in each Genre ~~
SELECT a.name AS ActorName, COUNT(m.idMovie) AS MovieCount FROM actors a JOIN movies m ON a.idActors = m.idActors GROUP BY a.name ORDER BY MovieCount DESC LIMIT 1;



~~ Retrieving all Movies with their Actors and Genre ~~
SELECT m.title AS MovieTitle, a.name AS ActorName, g.genre AS Genre FROM movies m JOIN actors a ON m.idActors = a.idActors LEFT JOIN genre g ON m.idGenre = g.idGenre;



~~ Movies directed by Kenneth Branagh ~~
SELECT m.title AS MovieTitle, d.name AS DirectorName FROM movies m JOIN directors d ON m.idDirectors = d.idDirectors WHERE d.name = 'Kenneth Branagh';



~~ Movies Released after 2014 ~~
SELECT title, releaseDate, budget, boxofficeRevenue FROM movies WHERE releaseDate > '2014-01-01';


~~ Movies with Budget greater than $100M ~~
SELECT title, budget FROM movies WHERE budget > 100000000;



~~ Movies Produced by each Directo ~~
SELECT d.name AS DirectorName, m.title AS MovieTitle FROM directors d LEFT JOIN movies m ON d.idDirectors = m.idDirectors;

