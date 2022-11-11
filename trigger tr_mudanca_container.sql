create or replace trigger tr_mudanca_container
before update or insert on tb_container
for each row

begin
    
    if(updating) then
        if(:old.cor_luz <> :new.cor_luz) then
            insert into tb_log_cor_luz values(sq_log_cor_luz.nextval,:old.id_co,:old.cor_luz,SYSDATE);
        end if;
        
        if(:old.periodo_irrigacao <> :new.periodo_irrigacao) then
            insert into tb_log_periodo_irrigacao values(sq_log_periodo_irrigacao.nextval,:old.id_co,:old.periodo_irrigacao,SYSDATE);
        end if;
        
        if(:old.temperatura <> :new.temperatura) then
            insert into tb_log_temperatura values(sq_log_temperatura.nextval,:old.id_co,:old.temperatura,SYSDATE);
        end if;
        
        if(:old.umidade <> :new.umidade) then
            insert into tb_log_umidade values(sq_log_umidade.nextval,:old.id_co,:old.umidade,SYSDATE);
        end if;
        
        if(:old.intensidade_luz <> :new.intensidade_luz) then
            insert into tb_log_intensidade_luz values(sq_log_intensidade_luz.nextval,:old.id_co,:old.intensidade_luz,SYSDATE);
        end if;
        
        if(:old.intensidade_irrigacao <> :new.intensidade_irrigacao) then
            insert into tb_log_intensidade_irrigacao values(sq_log_intensidade_irrigacao.nextval,:old.id_co,:old.intensidade_irrigacao,SYSDATE);
        end if;
        
        if(:old.capacidade_tanque_atu <> :new.capacidade_tanque_atu) then
            insert into tb_log_capacidade_tanque_atu values(sq_log_capacidade_tanque_atu.nextval,:old.id_co,:old.capacidade_tanque_atu,SYSDATE);
        end if;
    end if;
    
    if(inserting) then
        insert into tb_log_cor_luz values(sq_log_cor_luz.nextval,:new.id_co,:new.cor_luz,SYSDATE);
        insert into tb_log_periodo_irrigacao values(sq_log_periodo_irrigacao.nextval,:new.id_co,:new.periodo_irrigacao,SYSDATE);
        insert into tb_log_temperatura values(sq_log_temperatura.nextval,:new.id_co,:new.temperatura,SYSDATE);
        insert into tb_log_umidade values(sq_log_umidade.nextval,:new.id_co,:new.umidade,SYSDATE);
        insert into tb_log_intensidade_luz values(sq_log_intensidade_luz.nextval,:new.id_co,:new.intensidade_luz,SYSDATE);
        insert into tb_log_intensidade_irrigacao values(sq_log_intensidade_irrigacao.nextval,:new.id_co,:new.intensidade_irrigacao,SYSDATE);
        insert into tb_log_capacidade_tanque_atu values(sq_log_capacidade_tanque_atu.nextval,:new.id_co,:new.capacidade_tanque_atu,SYSDATE);
   
    end if;
    
end;