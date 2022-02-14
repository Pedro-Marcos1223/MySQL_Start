	CREATE DATABASE db_rh;
    
    USE db_rh;
    
    CREATE TABLE tb_funcionarios(
    id BIGINT (5) AUTO_INCREMENT,
    nome VARCHAR (50),
    cpf VARCHAR (20),
    rg VARCHAR (20), 
    salario DECIMAL (10,2),
    email VARCHAR (120),
    
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Pedro", "120.120.120-20", "12.120.120-0", 3000.00, "Pedro@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Rodrigo", "122.122.122-22", "12.122.122-2", 5000.00, "Rodrigo@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Lucas", "123.123.123-23", "13.123.123-0", 1500.00, "Lucas@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Gabriel", "124.124.124-20", "12.124.124-0", 1900.00, "Gabriel@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("João", "125.125.125-20", "15.125.154-0", 1200.00, "João@email.com");
    
    SELECT * FROM 	tb_funcionarios WHERE salario > 2000.00;
    
     SELECT * FROM 	tb_funcionarios WHERE salario < 2000.00;
     
     UPDATE tb_funcionarios SET salario = 2100.00 WHERE id = 4;
     
     
    
    
    