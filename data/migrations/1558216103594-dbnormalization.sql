1. CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

2. INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

3. ALTER TABLE books ADD COLUMN bookshelf_id INT;

4. UPDATE books SET bookshelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books;

5. ALTER TABLE books DROP COLUMN bookshelf;

6. ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);