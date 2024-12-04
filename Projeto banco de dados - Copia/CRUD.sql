use ifood;
#C R U D - READ

#SELECT * FROM restaurante;
#SELECT * FROM promocao;
select * from restaurante where categoria_id=1;

#CRUD - UPDATE - alterar
update restaurante set horario_funcionamento = '23:00' where categoria_id=1;

#CRUD - DELETE
delete from restaurante where id = 3;
