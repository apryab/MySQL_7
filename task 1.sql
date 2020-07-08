start transaction;
insert into sample.`row`(id, `name`)
select id, `name` from (select * from shop.`row`
where id = 1) as temp;
delete from shop.`row` 
where id = 1;
commit;