DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  author_id INTEGER,
  FOREIGN KEY (author_id) REFERENCES authors(id),
  title VARCHAR(50),
  num_pages FLOAT,
  publication_date DATE
);

INSERT INTO authors
  (id, first_name, last_name)
VALUES
  (1, 'Sandi', 'Metz'),
  (2, 'Michael', 'Crichton'),
  (3, 'Stephanie', 'Meyer'),
  (4, 'J.K.', 'Rowling'),
  (5, 'Margaret', 'Atwood'),
  (6, 'Cherie', 'Dimaline'),
  (7, 'Angela', 'Davis'),
  (8, 'Stephen', 'King'),
  (9, 'Michael', 'Connelly'),
  (10, 'E.B.', 'White'),
  (11, 'William', 'Gibson'),
  (12, 'Philip K.', 'Dick');

INSERT INTO books
  (author_id, title, num_pages, publication_date)
VALUES
  (1, 'Practical Object Oriented Design in Ruby', 247, '2012-08-19'),
  (1, '99 Bottles of OOP', 225, '2016-07-24'),
  (2, 'Jurassic Park', 466, '1990-11-07'),
  (2, 'The Andromeda Strain', 327, '1969-09-01'),
  (2, 'Prey', 507, '2002-11-25'),
  (2, 'Airframe', 431, '1996-11-27'),
  (2, 'Congo', 442, '1980-01-15'),
  (2, 'Disclosure', 455, '1994-01-01'),
  (3, 'Twilight Tenth Anniversary', 299, '2016-07-01'),
  (3, 'Twilight', 501, '2006-09-06'),
  (3, 'Eclipse', 629, '2007-08-07'),
  (3, 'New Moon', 563, '2006-09-06'),
  (3, 'Breaking Dawn', 756, '2008-08-02'),
  (4, 'Harry Potter and the Sorcerer''s Stone', 309, '1997-11-01'),
  (4, 'Harry Potter and the Prisoner of Azkaban', 435, '1999-07-08'),
  (4, 'Harry Potter and the Chamber of Secrets', 341, '1998-07-02'),
  (4, 'Harry Potter and the Order of the Phoenix', 870, '2004-09-01'),
  (4, 'Harry Potter and the Goblet of Fire', 734, '2000-07-08'),
  (4, 'Harry Potter and the Half-Blood Prince', 652, '2005-07-16'),
  (4, 'Harry Potter and the Deathly Hallows', 759, '2007-07-21'),
  (5, 'The Testaments', 422, '2019-09-10'),
  (5, 'Alias Grace', 468, '1996-12-01'),
  (5, 'The Handmaid''s Tale', 312, '1985-08-01'),
  (5, 'MaddAddam', 394, '2013-09-03'),
  (5, 'Cat''s Eye', 462, '1998-01-01'),
  (6, 'The Marrow Thieves', 231, '2017-09-01'),
  (6, 'Empire of Wild', 320, '2019-09-17'),
  (6, 'Red Rooms', 153, '2007-05-31'),
  (6, 'The Girl Who Grew a Galaxy', 351, '2013-06-26'),
  (6, 'A Gentle Habit', 178, '2015-12-11'),
  (7, 'Women, Race, and Class', 288, '1983-02-12'),
  (7, 'An Autobiography', 416, '1989-03-01'),
  (7, 'Are Prisons Obsolete?', 128, '2003-08-05'),
  (8, 'The Shining', 659, '1980-07-01'),
  (8, 'It', 1116, '1987-10-01'),
  (8, 'The Stand', 1153, '1990-05-01'),
  (8, 'Misery', 370, '1988-11-01'),
  (8, 'Pet Sematary', 580, '2014-05-13'),
  (8, 'Bag of Bones', 736, '1998-09-22'),
  (8, 'Doctor Sleep', 531, '2013-09-24'),
  (8, 'Cujo', 432, '1981-08-01'),
  (8, 'The Dead Zone', 402, '1979-08-30'),
  (9, 'The Lincoln Lawyer', 528, '2005-10-01'),
  (9, 'The Black Echo', 482, '2002-12-01'),
  (9, 'The Poet', 510, '2002-07-01'),
  (9, 'The Late Show', 405, '2017-07-18'),
  (9, 'The Brass Verdict', 422, '2008-10-14'),
  (9, 'The Wrong Side of Goodbye', 388, '2016-11-01'),
  (9, 'The Drop', 388, '2011-11-28'),
  (9, 'Two Kinds of Truth', 417, '2017-10-31'),
  (9, 'The Last Coyote', 400, '1997-10-06'),
  (9, 'The Crossing', 388, '2015-11-03'),
  (9, 'The Concrete Blonde', 484, '2007-02-01'),
  (10, 'Stuart Little', 131, '2006-01-01'),
  (10, 'Charlotte''s Web', 184, '2001-10-01'),
  (10, 'The Trumpet of the Swan', 252, '2000-10-03'),
  (10, 'Here Is New York', 58, '2000-01-01'),
  (11, 'Neuromancer', 292, '2000-07-01'),
  (11, 'Pattern Recognition', 367, '2005-02-01'),
  (11, 'Count Zero', 308, '2006-03-07');
