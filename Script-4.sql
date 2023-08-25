create database habil_residencia;

create table habilidades(
    hab_cd_id serial,
    var_tx_nome varchar(20),
    primary key(hab_cd_id)
);

create table residente(
    res_cd_id serial,
    res_int_cpf bigint,
    res_tx_nome varchar(60),
    res_dt_dtnascimento date,
    res_tx_email varchar (50),
    fk_hab_cd_id integer,
    primary key(res_cd_id)
    foreign key (fk_hab_cd_id) references habilidades
);

create table laboratorio(
    lab_cd_id serial,
    lab_txt_nomelab varchar(20),
    lab_txt_nomechefe varchar(60),
    lab_int_senha integer,
    lab_txt_email varchar (50),
    primary key(lab_cd_id)
);

create table coordenacao(
    cor_cd_id serial,
    cor_int_cpf bigint,
    cor_tx_nome varchar(60),
    cor_tx_senha integer,
    cor_tx_email varchar (11),
    fk_res_cd_id integer,
    fk_hab_cd_id integer,
    fk_lab_cd_id integer,
    primary key(cor_cd_id)--,
    foreign key (fk_res_cd_id) references residente,
    foreign key (fk_hab_cd_id) references habilidades,
    foreign key (fk_lab_cd_id) references laboratorio*/
);

insert into habilidades (var_tx_nome) values
    ('Habilidade 1'),
    ('Habilidade 2'),
	('Habilidade 3'),
	('Habilidade 4'),
	('Habilidade 5')
	
insert into residente (res_int_cpf, res_tx_nome, res_dt_dtnascimento, res_tx_email) values
    (12345678901, 'Frida Kahlo',to_date('2023-08-22','yyyy-mm-dd'), 'frida@campuslab.com'),
    (22345678902, 'Jon Snow', to_date('2023-08-22','yyyy-mm-dd'), 'snow@campuslab.com'),
    (32345678903, 'Ozzy Osbourne', to_date('2023-08-22','yyyy-mm-dd'), 'ozzy@campuslab.com'),
    (42345678904, 'Freddie Mercury', to_date('2023-08-22','yyyy-mm-dd'), 'ganesha@campuslab.com'),
    (52345678905, 'Sirius Black', to_date('2023-08-22','yyyy-mm-dd'), 'siius@campuslab.com')

insert into laboratorio (lab_txt_nomelab, lab_txt_nomechefe, lab_tx_senha, lab_tx_email) values
    ('Biquim','Gertrude', 'bf551', 'lbiquim@campuslab.com'),
    ('Biomic','Marie', 'bm896', 'lbiomic@campuslab.com'),
    ('Biotec','Lovelace', 'bt968', 'lbiotec@campuslab.com'),
    ('Biofis','Marie', 'bf687', 'lbiofis@campuslab.com'),
    ('Biocel','Florence', 'bc458', 'biocel@campuslab.com')

insert into coordenacao (cor_int_cpf, cor_tx_nome, cor_tx_senha, cor_tx_email) values
    (78945612307,'Luke','cor123','luke@campuslab.com'),
    (365987456213,'Arya','cor456','arya@campuslab.com'),
    (85974621489,'Tony','cor658','tony@campuslab.com'),
    (84597563254,'Bruce','cor741','bruce@campuslab.com'),
    (35897465891,'Gandalf','cor382','gandalf@campuslab.com'),
    
select * from residente;
select * from residente where res_tx_nome like 'F%';
create index nomeresdente on residente(res_tx_nome);  


    
