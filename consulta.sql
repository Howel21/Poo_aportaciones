-- Column: id_cuenta

-- ALTER TABLE public."Cuenta" DROP COLUMN id_cuenta;

ALTER TABLE public."Cuenta" ADD COLUMN debe double ;
drop constraint pk_id_registro;
ALTER TABLE public."Persona" add constraint pk_id_persona PRIMARY KEY (id);
ALTER TABLE public."Registro_Cuenta" add constraint fk_cuenta_registro FOREIGN KEY (id_cuenta) REFERENCES public."Cuenta" (id_cuenta);

insert into public."Cuenta"(descripcion,categoria_balance,categoria_estado_resultado,id_cuenta) values ('banco',1,10,2);
insert into public."Cuenta"(descripcion,categoria_balance,categoria_estado_resultado,id_cuenta) values ('caja',1,11,1);

insert into public."Registro_Cuenta"(id_registro,fecha_modificacion,saldo,id_cuenta) values ('2','20-11-2018',1000,1);
ALTER TABLE public."Registro_Cuenta" add constraint pk_id_registro_registro PRIMARY KEY (id_cuenta,id_registro);


select * from public."Registro_Cuenta";

select * from public."Registro_Cuenta" inner join public."Cuenta" on public."Registro_Cuenta".id_cuenta=public."Cuenta".id_cuenta



abriconecion();
cerrarconecion
