
use ecommerce;
create table Customers (
    customer_id integer PRIMARY KEY, 
    first_name text NOT NULL,                
    last_name text NOT NULL,                       
    email  text,                   
    phone_number text,                           
    address text
)
create table Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,   
    category_name VARCHAR(255) UNIQUE NOT NULL,    
    description TEXT 
    )
