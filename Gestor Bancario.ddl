Gestor Bancario
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(255),
  address VARCHAR(255)
);

CREATE TABLE Accounts (
  account_id INT PRIMARY KEY,
  customer_id INT,
  account_type VARCHAR(255),
  balance DECIMAL(10,2),
  open_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Transactions (
  transaction_id INT PRIMARY KEY,
  account_id INT,
  transaction_type VARCHAR(255),
  amount DECIMAL(10,2),
  transaction_date DATE,
  FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);