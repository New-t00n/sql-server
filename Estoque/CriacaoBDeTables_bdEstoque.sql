create database bdEstoque

go
use bdEstoque


create table tbCliente (
	codCliente int primary key identity (1,1),
	nomeCliente varchar (30) NOT NULL,
	cpfCliente varchar (11) not null,
	emailCliente varchar(40) not null,
	sexoCliente varchar (30) not null,
	dataNascimentoCliente smalldatetime not null  
)

create table tbVenda (
     codVenda int primary key identity (1,1),
	 dataVenda smalldatetime not null,
	 valorTotalVenda money not null,
	 codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
    )
    
create table tbFornecedor (
	codFornecedor int primary key identity (1,1),
	nomeFornecedor varchar (30),
	contatoFornecedor varchar (30) 
)

create table tbfabricante(
	codFabricante int primary key identity (1,1),
	nomeFabricante varchar (30)
) 

create table tbProduto(
	codProduto int primary key identity (1,1),
	descricaoProduto varchar (30) not null, 
	valorProduto money not null,
	quantidadeProduto int not null,
	codFabricante int foreign key references tbFabricante(codFabricante),
	codFornecedor int foreign key references tbFornecedor (codFornecedor)
)

 create table tbItensVenda(
	 codItemVenda int primary key identity(1,1),
	 codVenda int foreign key references tbVenda (CodVenda),
	 codProduto int foreign key references tbProduto(codProduto),
	 quantidadeItensVenda int, 
	 subTotalItensVenda money
 )
