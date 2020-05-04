DROP DATABASE bankaccounts;
CREATE DATABASE bankaccounts;
USE bankaccounts;

SELECT * FROM customers;
SELECT * FROM accounts;
SELECT * FROM transactions;

CREATE TABLE customers (
	customer_number VARCHAR(10) NOT NULL PRIMARY KEY,
    fullname VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    email VARCHAR (50),
    phone VARCHAR (10)
);

INSERT INTO customers (customer_number,fullname,address,email,phone) VALUES ('cus_1','BinhNguyen','HaNoi','bih@email.com','0123456789');
INSERT INTO customers (customer_number,fullname,address,email,phone) VALUES ('cus_2','NguyenNguyen','NamDinh','nguyen@email.com','0123456789');
INSERT INTO customers (customer_number,fullname,address,email,phone) VALUES ('cus_3','TienNguyen','NinhBinh','tien@email.com','0123456789');
INSERT INTO customers (customer_number,fullname,address,email,phone) VALUES ('cus_4','LamNguyen','ThaiBinh','lam@email.com','0123456789');
INSERT INTO customers (customer_number,fullname,address,email,phone) VALUES ('cus_5','HoaiPham','HaNam','hoai@email.com','0123456789');
INSERT INTO customers (customer_number,fullname,address,email,phone) VALUES ('cus_6','ThanhNguyen','ThanhHoa','thanh@email.com','0123456789');

CREATE TABLE accounts (
	account_number VARCHAR(10) NOT NULL PRIMARY KEY,
    customer_number VARCHAR(10),
    account_type VARCHAR(10),
    open_date DATE,
    balance DOUBLE,
	FOREIGN KEY (customer_number) REFERENCES customers(customer_number)
);

INSERT INTO accounts (account_number, customer_number,account_type,open_date,balance) VALUES ('acc_1','cus_1','personal','2020/04/30',10000000);
INSERT INTO accounts (account_number, customer_number,account_type,open_date,balance) VALUES ('acc_2','cus_2','enterprise','2020/04/30',10000000);
INSERT INTO accounts (account_number, customer_number,account_type,open_date,balance) VALUES ('acc_3','cus_3','personal','2020/04/30',10000000);
INSERT INTO accounts (account_number, customer_number,account_type,open_date,balance) VALUES ('acc_4','cus_4','enterprise','2020/04/30',10000000);
INSERT INTO accounts (account_number, customer_number,account_type,open_date,balance) VALUES ('acc_5','cus_5','vip','2020/04/30',10000000000);
INSERT INTO accounts (account_number, customer_number,account_type,open_date,balance) VALUES ('acc_6','cus_6','personal','2020/04/30',10000000);

CREATE TABLE transactions (
	tran_number VARCHAR(10) NOT NULL PRIMARY KEY,
    account_number VARCHAR(10) NOT NULL,
    tran_date DATE,
    tran_amounts DOUBLE,
    tran_description VARCHAR(500),
    FOREIGN KEY (account_number) REFERENCES accounts(account_number)
);

INSERT INTO transactions (tran_number, account_number,tran_date, tran_amounts, tran_description) VALUES ('tran_1','acc_1','2020/04/30',500000,'Pay for learning');
INSERT INTO transactions (tran_number, account_number,tran_date,tran_amounts,tran_description) VALUES ('tran_2','acc_2','2020/04/30',500000,'Pay for learning');
INSERT INTO transactions (tran_number, account_number,tran_date,tran_amounts,tran_description) VALUES ('tran_3','acc_3','2020/04/30',500000,'Pay for learning');
INSERT INTO transactions (tran_number, account_number,tran_date,tran_amounts,tran_description) VALUES ('tran_4','acc_4','2020/04/30',500000,'Pay for learning');
INSERT INTO transactions (tran_number, account_number,tran_date,tran_amounts,tran_description) VALUES ('tran_5','acc_5','2020/04/30',500000,'Pay for learning');
INSERT INTO transactions (tran_number, account_number,tran_date,tran_amounts,tran_description) VALUES ('tran_6','acc_6','2020/04/30',500000,'Pay for learning');


