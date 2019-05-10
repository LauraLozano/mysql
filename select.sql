select name from clients
select * from clients limit 10
select * from clients limit 10 where gender = 'M'

-- Año de cada fecha
select year(birthdate) from clients 
limit 10 
where gender = 'M'

-- año de hoy
year(now())

--Edad de los clientes
select year(now()) - year(birthdate)
from clients
limit 10

--comparacion like:
select * from clients like '%aave%'

select name, email, year(now()) - year(birthdate) as Edad, gender
from clients
where gender='F'
and name like '%lop%'