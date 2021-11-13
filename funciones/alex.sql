VALIDACION TABLA TIPO_HABITACION

alter table tipo_habitacion
add constraint check_descripcion_tipo
check (descripcion_tipo ~ '^[D,M,S]{1}$');

alter table tipo_habitacion
add constraint check_tipo_id
check (tipo_id>0);

alter table tipo_habitacion
add constraint check_precio_base
check (precio_base>0::money);


VALIDACION TABLA HABITACION

alter table habitacion
add constraint check_habitacion_id
check (habitacion_id>0);

alter table habitacion
add constraint check_numero_habitacion
check (numero_habitacion>0);

alter table habitacion
add constraint check_estado_habitacion
check (estado_habitacion ~ '^[D,O,R]{1}$');

alter table habitacion
add constraint check_tipo_habitacion
check (tipo_habitacion>0);

VALIDACION TABLA CLIENTE

alter table cliente
add constraint check_cliente_id
check (cliente_id>0);

alter table cliente
add constraint check_tipo_cliente
check (tipo_cliente ~ '^[N,J]{1}$');

alter table cliente
add constraint check_apellidos
check (apellidos ~ '^[a-z|A-Z|\s]{1,100}' 

alter table cliente 
add constraint
check_nombres check 
(nombres ~* '^[A-Z\s]{1,100}');

alter table cliente
 add constraint 
check_fecha_nacimiento check
(fecha<= '2021-11-11');

alter table cliente
add constraint check_tipo_documento
check (tipo_documento ~ '^[D,P,C,R]{1}$');

alter table cliente
add constraint check_sexo
check (sexo ~ '^[M,F}$');

alter table cliente
add constraint check_numero_documento
check (numero_documento ~ '^[0-9]{8}' 
or numero_documento ~ '^[0-9]{12}$');

alter table cliente
add constraint check_pais
check (pais>0);
