use ifood;

select historico_entrega.id, historico_entrega.id_status_entrega, status_entrega.nome from historico_entrega inner join status_entrega on status_entrega.id=id_status_entrega order by id_status_entrega desc;