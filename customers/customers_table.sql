 CREATE TABLE customers 
(customer_id INTEGER 
	CONSTRAINT cust_customer_id_pk PRIMARY KEY 
 ,f_name VARCHAR NOT NULL
 ,l_name VARCHAR NOT NULL
 ,street_address VARCHAR(100) 
 ,zip_code INTEGER
 ,state_province VARCHAR (2) 
 ,dob DATE NOT NULL 
 ,phone VARCHAR (12) NOT NULL UNIQUE  
 ,email VARCHAR (50) NOT NULL UNIQUE 
 ,gender VARCHAR (1)
 ); 
