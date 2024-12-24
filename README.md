This project represents a **relational database** designed to manage and store detailed information about movies, including their associated actors, directors, genres, release dates, budgets, and box office revenues. The database is structured to capture relationships between key entities, making it a robust solution for exploring movie-related data.

## Features
- **Actors**: Information about actors featured in the movies.
- **Directors**: Data on movie directors.
- **Genres**: Classification of movies by genre.
- **Movies**: Core movie information, including release dates, budgets, and box office performance.
- **Relationships**: Comprehensive linking of movies to actors, genres, and directors for seamless queries.

The database consists of the following tables:
1. **`actors`**  
   Contains details about the actors:
   - `idActors`: Unique identifier for each actor.
   - `name`: Actor's name.

2. **`directors`**  
   Stores information about movie directors:
   - `idDirectors`: Unique identifier for each director.
   - `name`: Director's name.

3. **`genre`**  
   Defines the genre of each movie:
   - `idGenre`: Unique identifier for each genre.
   - `genre`: Genre name (e.g., Adventure, Drama).
   - `idMovie`: Foreign key linking to the `movies` table.

4. **`movies`**  
   Core table holding movie details:
   - `idMovie`: Unique identifier for each movie.
   - `title`: Title of the movie.
   - `idActors`: Foreign key linking to the `actors` table.
   - `idGenre`: Foreign key linking to the `genre` table.
   - `idDirectors`: Foreign key linking to the `directors` table.
   - `releaseDate`: Release date of the movie.
   - `budget`: Budget of the movie.
   - `boxofficeRevenue`: Total box office revenue.

---

## Key Relationships
- Each movie is associated with one or more actors, directors, and genres.
- Foreign key constraints enforce data integrity and ensure consistent relationships across the database:
  - **`movies.idActors`** references **`actors.idActors`**.
  - **`movies.idDirectors`** references **`directors.idDirectors`**.
  - **`movies.idGenre`** references **`genre.idGenre`**.

---

## Sample Data
The database includes the following example records:

- **Actors**:  
  - Leonardo DiCaprio, Alden Ehrenreich, Kaya Scodelario.
  
- **Directors**:  
  - Kenneth Branagh, Zal Batmanglij.

- **Genres**:  
  - Adventure, Drama, Romance.

- **Movies**:  
  - *Batman v Superman: Dawn of Justice*: $250M budget, $872.7M box office.  
  - *Blended*: $40M budget, $128M box office.

---

## Tools & Versions
- **Database Management**: phpMyAdmin SQL Dump
- **Server**: MySQL 9.1.0
- **PHP**: Version 8.3.14

---

## License
This project is open-source and free to use. Contributions are welcome!
