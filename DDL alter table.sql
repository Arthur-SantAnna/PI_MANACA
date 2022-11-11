alter table tb_container add constraint fk_tb_container
foreign key(id_c) references tb_cliente(id_c);

alter table tb_log_intensidade_luz add constraint fk_tb_log_intensidade_luz
foreign key(id_co) references tb_container(id_co);

alter table tb_log_intensidade_irrigacao add constraint fk_tb_log_intensidade_irrigacao
foreign key(id_co) references tb_container(id_co);

alter table tb_log_capacidade_tanque_atu add constraint fk_tb_log_capacidade_tanque_atu
foreign key(id_co) references tb_container(id_co);

alter table tb_log_cor_luz add constraint fk_tb_log_cor_luz
foreign key(id_co) references tb_container(id_co);

alter table tb_log_periodo_irrigacao add constraint fk_tb_log_periodo_irrigacao
foreign key(id_co) references tb_container(id_co);

alter table tb_log_temperatura add constraint fk_tb_log_temperatura
foreign key(id_co) references tb_container(id_co);

alter table tb_log_umidade add constraint fk_tb_log_umidade
foreign key(id_co) references tb_container(id_co);

alter table tb_plantado add constraint fk_tb_plantado
foreign key(id_co) references tb_container(id_co);

alter table tb_plantado add constraint fk_tb_plantado1
foreign key(id_v) references tb_vegetal(id_v);

alter table tb_movimentacoes_plantacao add constraint fk_tb_movimentacoes_plantacao
foreign key(id_p) references tb_plantado(id_p);

alter table tb_movimentacoes_plantacao add constraint fk_tb_movimentacoes_plantacao1
foreign key(id_tm) references tb_tipo_movimentacao(id_tm);