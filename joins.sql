--? Find all books about Computers and list ONLY the book titles
SELECT * FROM subjects WHERE subject='Computers';   --* subject id is 4
SELECT title FROM books WHERE subject_id = 4;

--? Find all books and display a result table with ONLY the following columns
    -- Book title
    -- Author's first name
    -- Author's last name
    -- Book subject
SELECT b.title, a.first_name, a.last_name, s.subject
FROM books b JOIN authors a ON b.author_id = a.id
JOIN subjects s ON b.subject_id = s.id;

--? Find all books that are listed in the stock table
    -- Sort them by retail price (most expensive first)
    -- Display ONLY: title and price
SELECT b.title, s.cost
FROM editions e JOIN books b ON e.book_id = b.id
JOIN stock s ON s.isbn = e.isbn
ORDER BY s.cost;


--? Find the book "Dune" and display ONLY the following columns
    -- Book title
    -- ISBN number
    -- Publisher name
    -- Retail price
SELECT b.title, e.isbn, p.name, s.retail
FROM books b JOIN editions e ON e.book_id = b.id
JOIN publishers p ON e.publisher_id = p.id 
JOIN stock s ON s.isbn = e.isbn;


--? Find all shipments sorted by ship date display a result table with ONLY the following columns:
    -- Customer first name
    -- Customer last name
    -- ship date
    -- book title
SELECT c.first_name, c.last_name, sh.ship_date, b.title
FROM shipments sh JOIN customers c ON sh.customer_id = c.id
JOIN editions e ON e.isbn = sh.isbn
JOIN books b ON b.id = e.book_id
ORDER BY sh.ship_date;