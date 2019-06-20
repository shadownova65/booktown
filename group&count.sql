--? Get the COUNT of all books
SELECT COUNT(title) FROM books;

--? Get the COUNT of all Locations
SELECT COUNT(location) FROM subjects;


--? Get the COUNT of each unique location in the subjects table. Display the count and the location name. (hint: requires GROUP BY).
SELECT location, COUNT(location) FROM subjects GROUP BY location;

--? List all books. Display the book_id, title, and a count of how many editions each book has. (hint: requires GROUP BY and JOIN)
SELECT e.book_id, b.title, COUNT(e.book_id) AS "Edition#"
FROM editions e JOIN books b ON e.book_id = b.id
GROUP BY e.book_id, b.title
ORDER BY e.book_id;
