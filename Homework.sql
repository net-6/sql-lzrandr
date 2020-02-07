--1. create database
CREATE DATABASE HOMEWORK

--2.Create a table called Director with following columns: FirstName, LastName, Nationality and Birth date. Insert 5 rows into it.
CREATE TABLE Directors (
	DirectorId int IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR (50) ,
    LastName VARCHAR (50),
    Birthdate date,
    );

drop table Directors

--3. Delete the director with id = 3

delete from Director where DirectorIdID = 3

--4. Create a table called Movie with following columns: DirectorId, Title, ReleaseDate, Rating and Duration. 
-- Each movie has a director. Insert some rows into it
CREATE TABLE Movie (
	MovieID int IDENTITY(1,1) PRIMARY KEY,
	DirectorId int,
    Title VARCHAR (50) ,
    Rating int,
	Duration int,
    ReleaseDate date,
    );
--5. Update all movies that have a rating lower than 10.

UPDATE Movie
SET Rating = 10 WHERE Rating < 10

--6. Create a table called Actor with following columns: FirstName, LastName, Nationality, Birth date and PopularityRating. 
--Insert some rows into it.

CREATE TABLE Actor (
	ActorID int IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR (50),
    LastName VARCHAR (50) ,
    Nationality VARCHAR (50),
	Birthdate date,
    PopularityRating int,
    );

--7. Which is the movie with the lowest rating?

select Title from dbo.Movie where  Rating =(SELECT MIN(Rating) FROM Movie)

--8. Which director has the most movies directed?

select d.FirstName, d.DirectorIdID, count(DirectorId) as count from Movie m 
INNER JOIN Director d ON m.DirectorId = d.DirectorIdID
GROUP BY d.FirstName, d.DirectorIdID
order by count(d.DirectorIdID) desc


--9. Display all movies ordered by director's LastName in ascending order, then by birth date descending.

select d.LastName, m.Title, d.Birthdate from Movie m 
INNER JOIN Director d ON m.DirectorId = d.DirectorIdID
GROUP BY d.LastName,  m.Title,  d.Birthdate
order by d.LastName asc, d.Birthdate desc

--10. Create a function that will calculate and return the average rating of movies for a given director id

SELECT DirectorId, AVG(Rating) AS AverageRating FROM Movie where DirectorId = 1
Group by DirectorId

--11. Create a view that will display all the movie titles with the directors' first names and last names.

CREATE VIEW [MoviesAndDirectors] AS
select d.LastName,d.FirstName, m.Title from Movie m 
INNER JOIN Director d ON m.DirectorId = d.DirectorIdID;

--12. Create a stored procedure that will increment the rating by 1 for a given movie id.

CREATE PROCEDURE IncrementRating (
    @MovieID int
    ) AS
BEGIN TRANSACTION

UPDATE Movie
SET Rating = Rating + 1 
Where MovieID = @MovieID

COMMIT TRANSACTION

--13. Create a table called MovieHistory with a column for Id and a column for Message. 
--Create a trigger that will add a new entry in the MovieHistory table when a row from Movie's table is updated.



--14. Create a cursor that will print on the screen all movies with a title shorter than 10 characters

--15. Implement many to many relationship between Movie and Actor

--16. Implement many to many relationship between Movie and Genre

--17. Which actor has worked with the most distinct movie directors?

--18. Which is the preferred genre of each actor?
