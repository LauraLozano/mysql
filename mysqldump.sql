-- hacer backup de toda las bd

mysqldump -u root -p cursoplatzi

-- hacer backup del esquema de la bd

mysqldump -u root -p -D cursoplatzi 

-- hacer backup del esquema de la bd indicando ubicacion y nombre

mysqldump -u root -p -D cursoplatzi > esquema.sql