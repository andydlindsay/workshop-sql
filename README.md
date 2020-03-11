# SELECT Challenges

### Single Table

1. List the title, number of pages, and publication date for all books in the `books` table.

```SQL
SELECT title, num_pages, publication_date
FROM books;
```

2. List the first name and last name of all authors in the `authors` table.

```sql
SELECT first_name, last_name
FROM authors;
```

3. List all books published after `2010-01-01`.

```sql
SELECT title, num_pages, publication_date
FROM books
WHERE publication_date > '2010-01-01';
```

4. List all books published in the eighties (after `1980-01-01` and before `1990-01-01`).

```sql
SELECT title, num_pages, publication_date
FROM books
WHERE publication_date > '1980-01-01' AND publication_date < '1990-01-01';

-- or using BETWEEN
SELECT title, num_pages, publication_date
FROM books
WHERE publication_date BETWEEN '1980-01-01' AND '1990-01-01';
```

5. List all books with `The` in their title.

```SQL
SELECT title, num_pages, publication_date
FROM books
WHERE title LIKE '%The%';

-- convert title to lowercase to match all uses of "the"
SELECT title, num_pages, publication_date
FROM books
WHERE LOWER(title) LIKE '%the%';
```

6. Order the books alphabetically by title.

```sql
SELECT title, num_pages, publication_date
FROM books
ORDER BY title;
```

7. Order the books by number of pages from most to least.

```sql
SELECT title, num_pages, publication_date
FROM books
ORDER BY num_pages DESC;
```

8. Find the number of books in the table.

```sql
SELECT COUNT(id)
FROM books;
```

9. Calculate the average number of pages per book.

```sql
SELECT AVG(num_pages)
FROM books;
```

10. Create a `full_name` field from the author's first name and last name.

```sql
SELECT first_name + ' ' + last_name AS full_name
FROM authors;

-- or using CONCAT
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM authors;
```

### Multi-table

11. List the first name and last name of each author along with the titles of the books they wrote.

```sql
SELECT first_name, last_name, title
FROM authors
JOIN books
ON authors.id = books.author_id;

-- using full_name to neaten up the query
SELECT CONCAT(first_name, ' ', last_name) AS full_name, title
FROM authors
JOIN books
ON authors.id = books.author_id;
```

12. Retrieve only the books written by `J.K. Rowling`.

```sql
SELECT title
FROM books
JOIN authors
ON books.author_id = authors.id
WHERE first_name = 'J.K.' AND last_name = 'Rowling';
```

13. List all of the books sorted by the author's last name and the publication date in reverse order (latest published book on top).

```sql
SELECT last_name, title, publication_date
FROM authors
JOIN books
ON authors.id = books.author_id
ORDER BY last_name, publication_date DESC;
```

14. Count the number of books for each author.

```sql
SELECT first_name, last_name, COUNT(books.id)
FROM authors
JOIN books
ON authors.id = books.author_id
GROUP BY first_name, last_name;

-- with full_name
SELECT CONCAT(first_name, ' ', last_name) AS full_name, COUNT(books.id)
FROM authors
JOIN books
ON authors.id = books.author_id
GROUP BY full_name;

-- sorted from most to least
SELECT CONCAT(first_name, ' ', last_name) AS full_name, COUNT(books.id)
FROM authors
JOIN books
ON authors.id = books.author_id
GROUP BY full_name
ORDER BY count DESC;
```

15. Calculate the average number of pages for each author.

```sql
SELECT first_name, last_name, AVG(num_pages)
FROM authors
JOIN books
ON authors.id = books.author_id
GROUP BY first_name, last_name;

-- rounded to the nearest whole number
SELECT first_name, last_name, ROUND(AVG(num_pages)) AS avg_pages
FROM authors
JOIN books
ON authors.id = books.author_id
GROUP BY first_name, last_name;
```
