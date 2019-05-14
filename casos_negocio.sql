--1.Que nacionalidades hay ?

SELECT DISTINCT nationality FROM authors;

--2.Cuantos escritores hay en cada nacionalidad:

SELECT nationality, count(author_id) as c_author
FROM authors
WHERE nationality IS NOT NULL
AND nationalily  IN ('RUS', 'AUT')
GROUP BY nationality
ORDER BY c_author DESC, nationalily ASC;


--3.cual es el promedio / deviacion standar del precio de libros?
SELECT nationality, COUNT(book_id) as libros
AVG(price) as prom, STDDEV(price) as std
FROM books as books
JOIN authors as a 
ON a.author_id = b.author_id
GROUP BY nationalily
order by libros DESC;

--4.Precio maximo/minimo de un libro
SELECT a.nationality, MAX(price), MIN(price)
FROM books as b
JOIN a.authors as a 
ON b.author_id = a.author_id
GROUP BY nationalily

SELECT c.name, t.type, b.title, a.name, 
CONCAT(a.name, " (", a.nationality, ")" ) AS autor,
TO_DAYS(NOW) - TO_DAYS(t.created_at) AS ago
FROM transactions AS t
LEFT JOIN clients AS c 
ON c.client_id = t.client_id
LEFT JOIN books AS b
ON b.book_id = t.book_id
LEFT JOIN authors AS a
ON b.author_id = a.author_id



