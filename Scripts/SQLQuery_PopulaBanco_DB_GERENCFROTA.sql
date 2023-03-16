/*
UNIVERSIDADE PAULISTA - UNIP 2019
ANALISE E DESENVOLVIMENTO DE SISTEMAS
PROJETO DE GERENCIAMENTO DE FROTAS DE VEICULOS
MODIFICA��ES: 05/11/2019
*/

USE [DB_GERENCFROTA]
GO

SET ANSI_NULLS ON
GO 
SET QUOTED_IDENTIFIER ON
GO
SET LANGUAGE us_english
GO

INSERT INTO [dbo].[TB_VEICULOS]([VCL_PLACA],[VCL_MARCA],[VCL_MODELO],[VCL_CHASSI],[VCL_ANO],[VCL_COR],[VCL_COMBUSTIVEL],[VCL_ALUGADO],[VCL_SITUACAO],[VCL_DATAREGISTRO])
	VALUES('ABC1234','FIAT','FIAT UNO','9BWZZZ377VT004251',1993,1,1,0,1,'2019-01-01')
INSERT INTO [dbo].[TB_VEICULOS]
	VALUES('CDE4567','VOLKSWAGEN','GOL','9BWZZZ459VT004251',1999,3,2,0,1,'2019-02-02')
INSERT INTO [dbo].[TB_VEICULOS]
	VALUES('DDF9878','RENAULT','SANDERO','9BWZZZ459VT778767',2005,5,3,0,1,'2019-03-03')
INSERT INTO [dbo].[TB_VEICULOS]
	VALUES('EDD4567','HYUNDAI','HB20','9BWZZZ459VT569878',2012,2,4,1,1,'2019-04-04')
INSERT INTO [dbo].[TB_VEICULOS]
	VALUES('FYE5422','TOYOTA','COROLLA','9BWZZZ856VT125897',2000,8,2,1,1,'2019-05-05')

INSERT INTO [dbo].[TB_VEICULOS_ALUGUEL]([VCL_PLACA],[VCLAL_VALOR],[VCLAL_DTINICIO],[VCLAL_DTVENC])
     VALUES('EDD4567',450,'2019-02-03 10:00','2019-05-06 12:00')
INSERT INTO [dbo].[TB_VEICULOS_ALUGUEL]
	VALUES('FYE5422',720,'2019-09-10 11:00','2019-10-01 13:00') 

INSERT INTO [dbo].[TB_MOTORISTA]([MT_CPF],[MT_NOME],[MT_RG],[MT_ENDERECO],[MT_DTNASCIMENTO],[MT_TELEFONE],[MT_TELEFONE_RECADO],[MT_SITUACAO],[MT_DATAREGISTRO])
	VALUES('44159879890','Antonio Jos� da Silva','416875760','Avenida Celsa Garccia 35','1993-08-12',1192939596,1192349394,1,'2019-06-06')
INSERT INTO [dbo].[TB_MOTORISTA]
	VALUES('32456789709','Ana Maria Souza','459878876','Rua Adamastor 35','1872-09-11',1187654567,1567899875,1,'2019-07-07')
INSERT INTO [dbo].[TB_MOTORISTA]
	VALUES('67565434567','Marco Antonio Oliveira','879873452','Rua Cantagalo 34','1883-02-01',1276547890,1298762343,1,'2019-08-08')
INSERT INTO [dbo].[TB_MOTORISTA]
	VALUES('56498076754','Um Dois Tres de Oliveira Quatro','657659089','Rua Emilio Mallet 134','1927-09-17',1698074523,1676541122,1,'2019-09-09')
INSERT INTO [dbo].[TB_MOTORISTA]
	VALUES('57789909912','Inocencio Coitadinho Silveira','9098765x','Rua Limeira 56','1999-04-26',1190807878,1123456543,1,'2019-10-10')

INSERT INTO [dbo].[TB_CNH]([CNH_NUMERO],[CNH_DTEMISSAO],[CNH_DTVENC],[CNH_CATEGORIA],[CNH_ORGAOEMISSOR],[CNH_MT_CPF])
	VALUES(19731566160,'2017-08-12','2022-08-12','A','SP','44159879890')
INSERT INTO [dbo].[TB_CNH]
	VALUES(86492844442,'1992-07-22','1997-07-22','B','MG','32456789709')
INSERT INTO [dbo].[TB_CNH]
	VALUES(59087351755,'1990-01-01','1995-01-01','C','RJ','67565434567')
INSERT INTO [dbo].[TB_CNH]
	VALUES(07409253590,'1972-08-17','1977-8-17','D','RR','56498076754')
INSERT INTO [dbo].[TB_CNH]
	VALUES(71320132111,'2019-10-17','2024-10-17','E','ES','57789909912')

INSERT INTO [dbo].[TB_EXAMEDICO]([EXAM_DATA],[EXAM_DESCRICAO],[EXAM_SITUACAO],[EXAM_MT_CPF],[EXAM_DATAREGISTRO])
	VALUES('2019-11-12','Exame de Vista',0,'57789909912','2019-01-11')
INSERT INTO [dbo].[TB_EXAMEDICO]
	VALUES('1980-02-27','Exame de Clinico Geral',1,'56498076754','2019-02-12')
INSERT INTO [dbo].[TB_EXAMEDICO]
	VALUES('1991-09-03','Exame de Obituario',0,'67565434567','2019-03-13')
INSERT INTO [dbo].[TB_EXAMEDICO]
	VALUES('2018-12-01','Exame Admissional',1,'44159879890','2019-04-14')
INSERT INTO [dbo].[TB_EXAMEDICO]
	VALUES('1993-05-01','Exame Toxicol�gico',1,'32456789709','2019-05-15')

INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS]([SERVEXT_CNPJ],[SERVEXT_TIPO],[SERVEXT_NOME],[SERVEXT_TELEFONE]
,[SERVEXT_EMAIL],[SERVEXT_ENDERECO],[SERVEXT_CONVENIADO],[SERVEXT_DATAREGISTRO])
	VALUES(97151233000127,'Oficina','Death Samba',1136754567,'deathsamba@oficina.com.br','Rua Fam�lia Torkomian 25,Jardim Santa Rosa',0,'2019-06-16')
INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS]
	VALUES(82850585000101,'Seguradora','Ol�,SAMBA Seguros Co.',1187656543,'OleSamba@segurosco.com.br','Rua Eufrates 236,Col�nia Terra Nova',0,'2019-07-17')
INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS]
	VALUES(74429966000185,'Posto','Carnival Shake Abastecimento',1198764543,'CarnivalShake@posto.com.br','Rua do Terminal 12,Sotema',1,'2019-08-18')
INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS]
	VALUES(18499108000136,'Posto','Posto BrHue',1199878978,'brhue@posto.com.br','Rua Vinte e Cinco 76A,Bahia Nova',0,'2019-09-19')
INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS]
	VALUES(29594170000123,'GaragemEstacionamento','VAMBORA',1178678762,'VAMBORA@garagens.com.br','Rua Madre Radgund 35,Nossa Senhora Aparecida',1,'2019-10-20')

INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS_CONVENIADOS]([SERVEXTCONV_VALOR],[SERVEXTCONV_DTINICIO],[SERVEXTCONV_DTVENC],[SERVEXTCONV_SERVEXT_CNPJ])
	VALUES(2000,'2019-01-01 12:00','2021-12-10 14:00',74429966000185)
INSERT INTO [dbo].[TB_SERVICOS_EXTERNOS_CONVENIADOS]
	VALUES(1578,'2019-02-12 10:00','2020-01-01 13:00',29594170000123)

INSERT INTO [dbo].[TB_MANUTENCAO]([MTC_TIPO],[MTC_SERVEXT_CNPJ],[MTC_DESCRICAO],[MTC_DATA],[MTC_VALOR],[MTC_SITUACAO],[MTC_VCL_PLACA],[MTC_DATAREGISTRO])
	VALUES(0,97151233000127,'Manuten��o Correia Dentada','2019-09-08',450,1,'ABC1234','2019-01-23')
INSERT INTO [dbo].[TB_MANUTENCAO]
	VALUES(0,97151233000127,'Troca Fluido do Freio','2019-05-06',370,0,'CDE4567','2019-02-24')
INSERT INTO [dbo].[TB_MANUTENCAO]
	VALUES(1,97151233000127,'Troca Velas de igni��o','2019-01-12',789,0,'DDF9878','2019-03-25')
INSERT INTO [dbo].[TB_MANUTENCAO]
	VALUES(0,97151233000127,'Manuten��o Suspens�o','2018-03-02',890,1,'EDD4567','2019-04-26')
INSERT INTO [dbo].[TB_MANUTENCAO]
	VALUES(1,97151233000127,'Alinhamento e balanceamento','2019-10-10',1200,0,'FYE5422','2019-05-27')

INSERT INTO [dbo].[TB_SEGURO_VEICULO]([SEG_NUMAPOLICE],[SEG_SEGURADORA],[SEG_ITEMSEG_PLACA],[SEG_VALOR],[SEG_DATAINICIO]
,[SEG_FIMVIGENCIA],[SEG_FRANQUIA],[SEG_VALORFRANQUIA],[SEG_DATAREGISTRO])
	VALUES(1236567890,82850585000101,'DDF9878',1500,'2018-01-01','2019-12-12','Ol�,SAMBA Seguros Co.',780,'2019-06-28')
INSERT INTO [dbo].[TB_SEGURO_VEICULO]
	VALUES(2878878986,82850585000101,'EDD4567',800,'2019-02-13','2020-12-13','Ol�,SAMBA Seguros Co.',2600,'2019-07-01')
INSERT INTO [dbo].[TB_SEGURO_VEICULO]
	VALUES(9087878453,82850585000101,'CDE4567',567,'2019-12-20','2020-12-31','Ol�,SAMBA Seguros Co.',3000,'2019-08-02')
	
INSERT INTO [dbo].[TB_SEGCOBERTURA_VEICULO]([SEGC_DESCRICAO],[SEGC_SEGURO_NUMAPOLICE],[SEGC_DATAREGISTRO])
	VALUES('Roubo, furto e inc�ndio',1236567890,'2019-09-03')
INSERT INTO [dbo].[TB_SEGCOBERTURA_VEICULO]
	VALUES('Acidentes Pessoais de Passageiros',2878878986,'2019-10-04')
INSERT INTO [dbo].[TB_SEGCOBERTURA_VEICULO]
	VALUES('Compreensiva',9087878453,'2019-11-05')

INSERT INTO [dbo].[TB_SEGURO_MOTORISTA]([SEG_NUMAPOLICE],[SEG_SEGURADORA],[SEG_ITEMSEG_CPF],[SEG_VALOR]
,[SEG_DATAINICIO],[SEG_FIMVIGENCIA],[SEG_DATAREGISTRO])
     VALUES(6587909898,82850585000101,'57789909912',576,'2016-10-10','2019-11-05','2019-11-06')
INSERT INTO [dbo].[TB_SEGURO_MOTORISTA]
	VALUES(5545656787,82850585000101,'44159879890',400,'2017-12-03','2019-12-03','2019-12-07')
INSERT INTO [dbo].[TB_SEGURO_MOTORISTA]
	VALUES(3333454676,82850585000101,'67565434567',800,'2019-12-15','2021-12-15','2019-01-08')

INSERT INTO [dbo].[TB_SEGCOBERTURA_MOTORISTA]([SEGC_DESCRICAO],[SEGC_SEGURO_NUMAPOLICE],[SEGC_DATAREGISTRO])
	VALUES('Invalidez permanente ou total por acidente',6587909898,'2019-02-09')
INSERT INTO [dbo].[TB_SEGCOBERTURA_MOTORISTA]
	VALUES('Invalidez laborativa permanente total por doen�a',5545656787,'2019-03-10')
INSERT INTO [dbo].[TB_SEGCOBERTURA_MOTORISTA]
	VALUES('Morte por causas naturais ou acidentais',3333454676,'2019-04-11')

INSERT INTO [dbo].[TB_SINISTRO_VEICULO]([SIN_ITEMSEG],[SIN_SEGURO],[SIN_DESCRICAO],[SIN_DATAHORA],[SIN_DATAREGISTRO])
	VALUES('DDF9878',1236567890,'Colis�o','2019-02-03 12:00','2019-05-12')
INSERT INTO [dbo].[TB_SINISTRO_VEICULO]
	VALUES('EDD4567',2878878986,'Danos a terceiros','2019-07-11 13:00','2019-06-13')
INSERT INTO [dbo].[TB_SINISTRO_VEICULO]
	VALUES('CDE4567',9087878453,'Roubo ou furto','2019-12-07 14:00','2019-07-14')

INSERT INTO [dbo].[TB_SINISTRO_MOTORISTA]([SIN_ITEMSEG],[SIN_SEGURO],[SIN_DESCRICAO],[SIN_DATAHORA],[SIN_DATAREGISTRO])
	VALUES('57789909912',6587909898,'Invalidez permanente total ou parcial por acidente (IPA)','2019-12-01 11:30','2019-08-15')
INSERT INTO [dbo].[TB_SINISTRO_MOTORISTA]
	VALUES('44159879890',5545656787,'Di�ria por incapacidade tempor�ria (DIT) � doen�a','2019-12-10 10:00','2019-09-16')
INSERT INTO [dbo].[TB_SINISTRO_MOTORISTA]
	VALUES('67565434567',3333454676,'Di�ria por incapacidade tempor�ria (DIT) � acidente','2019-05-03 17:00','2019-10-17')

INSERT INTO [dbo].[TB_ABASTECIMENTO]([ABS_VCL_PLACA],[ABS_SERVEXT_CNPJ],[ABS_TIPO],[ABS_LITROS],[ABS_VALOR],[ABS_DATA],[ABS_DATAREGISTRO])
	VALUES('ABC1234',74429966000185,2,20,56,'2019-09-09','2019-11-18')
INSERT INTO [dbo].[TB_ABASTECIMENTO]
	VALUES('CDE4567',18499108000136,3,15,35,'2019-09-09','2019-12-19')
INSERT INTO [dbo].[TB_ABASTECIMENTO]
	VALUES('DDF9878',18499108000136,7,50,157,'2019-12-13','2019-01-20')
INSERT INTO [dbo].[TB_ABASTECIMENTO]
	VALUES('EDD4567',74429966000185,6,35,80,'2019-03-02','2019-02-21')
INSERT INTO [dbo].[TB_ABASTECIMENTO]
	VALUES('FYE5422',74429966000185,1,10,30,'2019-01-01','2019-03-22')

INSERT INTO [dbo].[TB_ESTOQUE_PECAS]([EP_DESCRICAO],[EP_VALORUNIT],[EP_QUANTD],[EP_DATAREGISTRO])
     VALUES('Pneus Aro 17',1029,10,'2019-04-23')
INSERT INTO [dbo].[TB_ESTOQUE_PECAS]
	VALUES('Kit de Pneus para Autom�vel Pirelli 175/65 Aro 14',850,5,'2019-05-24')
INSERT INTO [dbo].[TB_ESTOQUE_PECAS]
	VALUES('Oleo Sn 5w40 Volkswagen Norma 502 505 4 Litros',120,120,'2019-06-25')

INSERT INTO [dbo].[TB_ENTRADA_SAIDA]([ES_MT_CPF],[ES_VCL_PLACA],[ES_SERVEXT_CNPJ],[ES_TIPO],[ES_DATAHORA],[ES_DATAREGISTRO])
	VALUES('57789909912','ABC1234',29594170000123,'Saida','2019-08-10 10:26','2019-07-26')
INSERT INTO [dbo].[TB_ENTRADA_SAIDA]
	VALUES('44159879890','CDE4567',29594170000123,'Entrada','2019-05-06 09:26','2019-08-27')
INSERT INTO [dbo].[TB_ENTRADA_SAIDA]
	VALUES('67565434567','DDF9878',29594170000123,'Entrada','2019-01-12 07:26','2019-09-01')
INSERT INTO [dbo].[TB_ENTRADA_SAIDA]
	VALUES('32456789709','EDD4567',29594170000123,'Saida','2018-09-12 17:26','2019-10-02') 
INSERT INTO [dbo].[TB_ENTRADA_SAIDA]
	VALUES('56498076754','FYE5422',29594170000123,'Entrada','2019-10-06 20:26','2019-11-03')
INSERT INTO [dbo].[TB_ENTRADA_SAIDA]
	VALUES('57789909912','ABC1234',29594170000123,'Entrada','2020-01-01 10:26','2019-12-04')

INSERT INTO [dbo].[TB_MULTAS]([MULT_VCL_PLACA],[MULT_MT_CPF],[MULT_DESCRICAO],[MULT_LOCAL],[MULT_DTOCORRENCIA]
,[MULT_VALOR],[MULT_PAGO],[MULTPAG_DTPAGAMENTO],[MULT_DATAREGISTRO])
	VALUES('ABC1234','57789909912','Circular em dia de rod�zio','Rua Saladino Nunes, Residencial Oliveira','2019-08-08', 87,0,NULL,'2019-01-05')
INSERT INTO [dbo].[TB_MULTAS]
	VALUES('CDE4567','44159879890','Estacionar em guias rebaixadas','Rua Vinte e Um de Abril, Bela Vista','2018-01-01', 87,0,NULL,'2019-02-06')
INSERT INTO [dbo].[TB_MULTAS]
	VALUES('DDF9878','67565434567','Estacionar na contra-m�o','Rua F, Terminal Cadeia Velha','2017-01-01', 87,1,'2017-02-13','2019-03-07')
INSERT INTO [dbo].[TB_MULTAS]
	VALUES('EDD4567','32456789709','Estacionar de forma que impede movimenta��o de outro ve�culo','Rua Vinte e Um de Abril, Bela Vista','2019-10-02', 87,0,NULL,'2019-04-08')
INSERT INTO [dbo].[TB_MULTAS]
	VALUES('FYE5422','56498076754','Dirigir sem cinto de seguran�a','Rua Saladino Nunes, Residencial Oliveira','2019-10-02', 87,1,'2019-12-01','2019-05-09')

INSERT INTO [dbo].[TB_VIAGENS]([VG_REQ],[VG_VCL_PLACA],[VG_MT_CPF],[VG_OCUPANTES],[VG_DESTINO],[VG_DTSAIDA],[VG_DATAREGISTRO])
	VALUES(1,'ABC1234','57789909912',0,'Rua Miguel Santos, Caminho do Sol','2019-12-19','2019-06-10')
INSERT INTO [dbo].[TB_VIAGENS]
	VALUES(2,'CDE4567','44159879890',1,'Rua B, Cidade Sat�lite','2019-09-10','2019-07-11')
INSERT INTO [dbo].[TB_VIAGENS]
	VALUES(3,'DDF9878','32456789709',0,'Rua Pedro Rocha, Heli�polis','2019-02-10','2019-08-12')
INSERT INTO [dbo].[TB_VIAGENS]
	VALUES(4,'EDD4567','67565434567',1,'Rua Agulhas Negras, Jarivatuba','2018-12-02','2019-09-13')
INSERT INTO [dbo].[TB_VIAGENS]
	VALUES(5,'FYE5422','56498076754',0,'Avenida C 197, Setor Bueno','2018-11-09','2019-10-14')

INSERT INTO [dbo].[TB_VIAGENS_OCUPANTES]([VGO_VG_REQ],[VGO_NOME],[VGO_CPF],[VGO_DATAREGISTRO])
     VALUES(1,'Gonpachiro Kamaboko','11171174055','2019-06-15')
INSERT INTO [dbo].[TB_VIAGENS_OCUPANTES]
	 VALUES(2,'Monitsu Agatsuma','39862957042','2019-07-16')

INSERT INTO [dbo].[TB_CLIENTES]([CLT_CPF],[CLT_NOME],[CLT_RG],[CLT_ENDERECO],[CLT_TELEFONE],[CLT_EMAIL]
,[CLT_DTNASCIMENTO],[CLT_DTINICIO_CONTRATO])
     VALUES('86118909067','Carla Alves Almeida','302122047','Avenida dos Trabalhadores, 1333 Indaiatuba',1122226666,'carlaalves@email.com.br','1947-07-18','2000-01-01')
INSERT INTO [dbo].[TB_CLIENTES]
	VALUES('37651910001','Leonardo Carvalho Dias','227321145','Rua Augusto Ara�jo, 392 Rio de Janeiro',1687876565,'leocarvalh0@email.com.br','1987-11-12','2003-01-01')
INSERT INTO [dbo].[TB_CLIENTES]
	VALUES('85284993080','Anna Sousa Gomes','362429352','Rua �lvaro Theodoro da Cruz, 28 Caraguatatuba',3456567676,'annasouza@email.com.br','1993-02-22','2012-01-01')

INSERT INTO [dbo].[TB_FUNCIONARIO]([FUNC_NOME],[FUNC_LOGIN],[FUNC_SENHA],[FUNC_PERFIL_ACESSO],[FUNC_DATAREGISTRO])
     VALUES('Salatiel Luz Marinho','admin','admin',4,'2019-09-17')
INSERT INTO [dbo].[TB_FUNCIONARIO]
	VALUES('Inglesson','master','master',5,'2019-10-19')
INSERT INTO [dbo].[TB_FUNCIONARIO]
	VALUES('Leonardo Cavichiolli','oper','opr',2,'2019-11-20')
INSERT INTO [dbo].[TB_FUNCIONARIO]
	VALUES('Hebert Thalles','operacional','opr',2,'2019-12-21')
