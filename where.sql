--? Find the book "Little Women"
SELECT * FROM books WHERE title = 'Little Women';

--? Find all books containing the word "Python"
SELECT * FROM books WHERE title LIKE '%Python%';

--? Find all subjects with the location "Main St" sort them by subject
SELECT * FROM subjects WHERE location = 'Main St' ORDER BY subject;
