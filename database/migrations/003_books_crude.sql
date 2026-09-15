SELECT * FROM books;


SELECT * FROM books 
ORDER BY student_id ASC;


SELECT * FROM books
ORDER BY book_id DESC;


SELECT 
book_title,
book_author
FROM books

SELECT 
book_title,
book_author
FROM books
WHERE book_id = 1
LIMIT 1;

UPDATE books
SET 
book_title = 'Harry Potter and the Sorcerer''s Stone', 
book_author = 'J.K. Rowling'
WHERE book_id = 1;



