# net-6-sql
1. Create a database
2. Create a table called Director with following columns: FirstName, LastName, Nationality and Birth date. Insert 5 rows into it.
3. Delete the director with id = 3
4. Create a table called Movie with following columns: DirectorId, Title, ReleaseDate, Rating and Duration. Each movie has a director. Insert some rows into it
5. Update all movies that have a rating lower than 10.
6. Create a table called Actor with following columns: FirstName, LastName, Nationality, Birth date and PopularityRating. Insert some rows into it.
7. Which is the movie with the lowest rating?
8. Which director has the most movies directed?
9. Display all movies ordered by director's LastName in ascending order, then by birth date descending. 

10. Create a function that will calculate and return the average rating of movies for a given director id
11. Create a view that will display all the movie titles with the directors' first names and last names. 
12. Create a stored procedure that will increment the rating by 1 for a given movie id.
13. Create a table called MovieHistory with a column for Id and a column for Message. 
                Create a trigger that will add a new entry in the MovieHistory table when a row from Movie's table is updated.
14. Create a cursor that will print on the screen all movies with a title shorter than 10 characters
15. Implement many to many relationship between Movie and Actor
16. Implement many to many relationship between Movie and Genre
17. Which actor has worked with the most distinct movie directors?
18. Which is the preferred genre of each actor?
