-- cantidad de libros
select count(*) from books

select b.book_id, a.name, author_id, b.title
from books as books
inner join authors as a
on a.author_id = b.author_id
where a.author_id  between 1 and 5


select c.name, b.title, a.name, t.type
from transactions as t
join books as b
on t.book_id = b.book_id
join clients as c
on t.clients_id = c.clients_id
join authors as a
on b.author_id = a.author_id
where c.gender ='F'
and t.type = 'sell'

LEFT join

-- mal query
select b.title, a.name
from authors as a, books as b
where a.author_id = b.author_id
limit 10

-- buena practica
select b.title, a.name
from books as b
join authors as a
on a.author_id = b.author_id
limit 10

--left join
select a.author_id, a.name, a.nationality, b.title
from authors as a
left join books as b
on a.author_id = b.author_id
where a.author_id between 1 and 5 
order by a.author_id

--- cuantos books hay diferentes 
select a.author_id, a.name, a.nationality, count(b.book_id)
from authors as a
left join books as b
on a.author_id = b.author_id
where a.author_id between 1 and 5
group by a.author_id
order by a.author_id