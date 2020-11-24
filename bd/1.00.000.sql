---------------- TABELA TIPO_USUARIO ---------------------

create table tipo_usuario (
	codtipusu serial,
	destipusu varchar(20) not null,
	constraint codtipusu_pk primary key (codtipusu)
);

comment on table tipo_usuario is 'TABELA DO TIPO DO USUÁRIO';
comment on column tipo_usuario.codtipusu is 'CÓDIGO DO TIPO DO USUÁRIO';
comment on column tipo_usuario.destipusu is 'DESCRIÇÃO DO TIPO DO USUÁRIO';


--------------- TABELA REGIÃO -------------------------------

create table regiao (
	codreg serial,
	nomreg varchar(15) not null,
	constraint codreg_pk primary key (codreg)
);

comment on table regiao is 'TABELA DAS REGIÕES DOS ESTADOS';
comment on column regiao.codreg is 'CÓDIGO DA REGIÃO';
comment on column regiao.nomreg is 'NOME DA REGIÃO';


-------------- TABELA ESTADO --------------------------------

create table estado (
	codest serial,
	codreg integer not null,
	nomest varchar(20) not null,
	sigest char(2) not null,
	constraint codest_pk primary key (codest),
	constraint estado_codreg_fk foreign key (codreg) references regiao(codreg)
);

comment on table estado is 'TABELA DOS ESTADOS';
comment on column estado.codest is 'CÓDIGO DO ESTADO';
comment on column estado.codreg is 'CÓDIGO DA REGIÃO DO ESTADO';
comment on column estado.nomest is 'NOME DO ESTADO';
comment on column estado.sigest is 'SIGLA DO ESTADO';


-------------- TABELA CIDADE -----------------------------

create table cidade (
	codcid serial,
	codest integer not null,
	nomcid varchar(50) not null,
	cepcid varchar(10) not null,
	constraint codcid_pk primary key (codcid),
	constraint cidade_codest_fk foreign key (codest) references estado(codest)	
);

comment on table cidade is 'TABELA DAS CIDADES';
comment on column cidade.codcid is 'CÓDIGO DA CIDADE';
comment on column cidade.codest is 'CÓDIGO DO ESTADO';
comment on column cidade.nomcid is 'NOME DA CIDADE';
comment on column cidade.cepcid is 'CEP DA CIDADE';


-------------- TABELA ENDERECO ---------------------------

create table endereco (
	codend serial,
	codcid integer not null,
	ruaend varchar(50) not null,
	numend integer not null,
	baiend varchar(50) not null,
	constraint codend_pk primary key (codend),
	constraint endereco_codcid_fk foreign key (codcid) references cidade(codcid)
); 

comment on table endereco is 'TABELA DO ENDEREÇO';
comment on column endereco.codend is 'CÓDIGO DO ENDEREÇO';
comment on column endereco.codcid is 'CÓDIGO DA CIDADE';
comment on column endereco.ruaend is 'RUA DO ENDEREÇO';
comment on column endereco.numend is 'NÚMERO DO ENDEREÇO';
comment on column endereco.baiend is 'BAIRRO DO ENDEREÇO';


------------------- TABELA USUARIO ------------------------

create table usuario (
	codusu serial,
	codtipusu integer not null,
	nomeusu varchar(50) not null,
	emailusu varchar(50),
	telusu varchar(20),
	loginusu varchar(20) not null,
	senhausu varchar(20) not null,
	constraint codusu_pk primary key (codusu),
	constraint usuario_codtipusu_fk foreign key (codtipusu) references tipo_usuario(codtipusu)
);

comment on table usuario is 'TABELA DO USUÁRIO';
comment on column usuario.codusu is 'CÓDIGO DO USUÁRIO';
comment on column usuario.codtipusu is 'CÓDIGO DO TIPO DO USUÁRIO';
comment on column usuario.nomeusu is 'NOME DO USUÁRIO';
comment on column usuario.emailusu is 'EMAIL DO USUÁRIO';
comment on column usuario.telusu is 'TELEFONE DO USUÁRIO';
comment on column usuario.loginusu is 'LOGIN DO USUÁRIO';
comment on column usuario.senhausu is 'SENHA DO USUÁRIO';


------------------------ TABELA PACIENTE -------------------------------------

create table paciente (
	codpac serial,
	codusu integer not null,
	codend integer not null,
	altpac numeric(3,2) not null,
	pesopac numeric(5,2) not null,
	datanaspac date not null,
	constraint codpac_pk primary key (codpac),
	constraint paciente_codusu_fk foreign key (codusu) references usuario(codusu),
	constraint paciente_codend_fk foreign key (codend) references endereco(codend)
);

comment on table paciente is 'TABELA DO PACIENTE';
comment on column paciente.codpac is 'CÓDIGO DO PACIENTE';
comment on column paciente.codend is 'CÓDIGO DO ENDEREÇO DO USUÁRIO';
comment on column paciente.codusu is 'CÓDIGO DO USUÁRIO';
comment on column paciente.altpac is 'ALTURA DO PACIENTE';
comment on column paciente.pesopac is 'PESO DO PACIENTE';
comment on column paciente.datanaspac is 'DATA DE NASCIMENTO DO PACIENTE';


--------------------------- TABELA SINTOMA ----------------------------------

create table sintoma (
	codsin serial,
	dessin varchar(30) not null,
	constraint codsin_pk primary key (codsin)
);

comment on table sintoma is 'TABELA DE SINTOMAS';
comment on column sintoma.codsin is 'CÓDIGO DO SINTOMA';
comment on column sintoma.dessin is 'DESCRIÇÃO DO SINTOMA';


--------------------------- TABELA INTENSIDADE --------------------------------

create table intensidade (
	codint serial,
	desint varchar(20) not null,
	constraint codint_pk primary key (codint)
);

comment on table intensidade is 'TABELA DE INTENSIDADE DOS SINTOMAS';
comment on column intensidade.codint is 'CÓDIGO DA INTENSIDADE';
comment on column intensidade.desint is 'DESCRIÇÃO DA INTENSIDADE';


-------------------------- TABELA PRONTUARIO ----------------------------------

create table paciente_sintoma (
	codpacsin serial,
	codpac integer not null,
	codsin integer not null,
	codint integer not null,
	constraint codpacsin_pk primary key (codpacsin),
	constraint paciente_codpac_fk foreign key (codpac) references paciente(codpac),
	constraint sintoma_codsin_fk foreign key (codsin) references sintoma(codsin),
	constraint intensidade_codint_fk foreign key (codint) references intensidade(codint)
);

comment on table paciente_sintoma is 'TABELA QUE SALVA A RELAÇÂO DO PACIENTE, COM OS SINTOMAS APRESENTADOS E SUA INTENSIDADE';
comment on column paciente_sintoma.codpacsin is 'CÓDIGO IDENTIFICADOR DO PACIENTE COM O SINTOMA APRESENTADO';
comment on column paciente_sintoma.codpac is 'CÓDIGO DO PACIENTE';
comment on column paciente_sintoma.codsin is 'CÓDIGO DO SINTOMA';
comment on column paciente_sintoma.codint is 'CÓDIGO DA INTENSIDADE';


------------------ CARGA TIPO_USUARIO ---------------------

insert into tipo_usuario (codtipusu, destipusu)  values (1, 'PACIENTE');
insert into tipo_usuario (codtipusu, destipusu)  values (2, 'ADMINISTRADOR');


----------------- CARGA REGIAO -------------------------------

insert into regiao (codreg, nomreg)  values (1, 'SUL');
insert into regiao (codreg, nomreg)  values (2, 'SUDESTE');
insert into regiao (codreg, nomreg)  values (3, 'CENTRO-OESTE');
insert into regiao (codreg, nomreg)  values (4, 'NORDESTE');
insert into regiao (codreg, nomreg)  values (5, 'NORTE');


--------------- CARGA ESTADO --------------------------------

insert into estado (codest, codreg, nomest, sigest) values (1, 1, 'RIO GRANDE DO SUL', 'RS');
insert into estado (codest, codreg, nomest, sigest) values (2, 1, 'SANTA CATARINA', 'SC');
insert into estado (codest, codreg, nomest, sigest) values (3, 1, 'PARANÁ', 'PR');

insert into estado (codest, codreg, nomest, sigest) values (4, 2, 'SÃO PAULO', 'SP');
insert into estado (codest, codreg, nomest, sigest) values (5, 2, 'RIO DE JANEIRO', 'RJ');
insert into estado (codest, codreg, nomest, sigest) values (6, 2, 'ESPÍRITO SANTO', 'ES');
insert into estado (codest, codreg, nomest, sigest) values (7, 2, 'MINAS GERAIS', 'MG');

insert into estado (codest, codreg, nomest, sigest) values (8, 3, 'GOIÁS', 'GO');
insert into estado (codest, codreg, nomest, sigest) values (9, 3, 'MATO GROSSO', 'MT');
insert into estado (codest, codreg, nomest, sigest) values (10, 3, 'MATO GROSSO DO SUL', 'MS');

insert into estado (codest, codreg, nomest, sigest) values (11, 4, 'ALAGOAS', 'AL');
insert into estado (codest, codreg, nomest, sigest) values (12, 4, 'BAHIA', 'BA');
insert into estado (codest, codreg, nomest, sigest) values (13, 4, 'CEARÁ', 'CE');
insert into estado (codest, codreg, nomest, sigest) values (14, 4, 'MARANHÃO', 'MA');
insert into estado (codest, codreg, nomest, sigest) values (15, 4, 'PARAÍBA', 'PB');
insert into estado (codest, codreg, nomest, sigest) values (16, 4, 'PERNAMBUCO', 'PE');
insert into estado (codest, codreg, nomest, sigest) values (17, 4, 'PIAUÍ', 'PI');
insert into estado (codest, codreg, nomest, sigest) values (18, 4, 'RIO GRANDE DO NORTE', 'RN');
insert into estado (codest, codreg, nomest, sigest) values (19, 4, 'SERGIPE', 'SE');

insert into estado (codest, codreg, nomest, sigest) values (20, 5, 'ACRE', 'AC');
insert into estado (codest, codreg, nomest, sigest) values (21, 5, 'AMAPÁ', 'AP');
insert into estado (codest, codreg, nomest, sigest) values (22, 5, 'AMAZONAS', 'AM');
insert into estado (codest, codreg, nomest, sigest) values (23, 5, 'PARÁ', 'PA');
insert into estado (codest, codreg, nomest, sigest) values (24, 5, 'RONDÔNIA', 'RO');
insert into estado (codest, codreg, nomest, sigest) values (25, 5, 'RORAIMA', 'RR');
insert into estado (codest, codreg, nomest, sigest) values (26, 5, 'TOCANTINS', 'TO');
	

------------------ CARGA USUARIO ---------------------

insert into usuario (codusu, codtipusu, nomeusu, loginusu, senhausu) values (1, 2, 'ADMINISTRADOR', 'piloto', '123456');
	

---------------- CARGA INTENSIDADE --------------------------

insert into intensidade (codint, desint) values (1, 'POUCA');
insert into intensidade (codint, desint) values (2, 'MODERADA');
insert into intensidade (codint, desint) values (3, 'CONSTANTE');


---------------- CARGA SINTOMA --------------------------

insert into sintoma (codsin, dessin) values (1, 'FEBRE');
insert into sintoma (codsin, dessin) values (2, 'TOSSE');
insert into sintoma (codsin, dessin) values (3, 'FALTA DE AR');
insert into sintoma (codsin, dessin) values (4, 'DOR NO CORPO');
insert into sintoma (codsin, dessin) values (5, 'DOR DE GARGANTA');
insert into sintoma (codsin, dessin) values (6, 'CALAFRIO');
insert into sintoma (codsin, dessin) values (7, 'DOR MUSCULAR');
insert into sintoma (codsin, dessin) values (8, 'CONGESTÃO NASAL');
insert into sintoma (codsin, dessin) values (9, 'CORIZA'); 

