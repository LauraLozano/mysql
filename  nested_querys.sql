INSERT INTO books(title, author_id) VALUES ('El laberinto de la soledad',6)
INSERT INTO books(title, author_id, year) VALUES ('Vuelta al Laberinto de la soledad',
                (SELECT author_id FROM authors 
                where name= 'El laberinto de la soledad'
                LIMIT 1), 1960
);
