	
-- Ensure that the books table exists
CREATE TABLE IF NOT EXISTS books (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    authors VARCHAR(255),
    isbn VARCHAR(20),
    publisher VARCHAR(255),
    published_on DATE
);

-- Insert data into books
INSERT INTO books (id, name, price, authors, isbn, publisher, published_on) 
VALUES 
    (1, 'The Lord of the Rings', 99.99, 'J. R. R. Tolkien', '9780261103207', 'Allen & Unwin', '1954-07-29'),
    (2, 'Harry Potter and the Half-Blood Prince', 55.00, 'J. K. Rowling', '9780439784542', 'Bloomsbury Publishing (UK)', '2005-07-16'),
    (3, 'The Da Vinci Code', 250.89, 'Dan Brown', '0385504209', 'Doubleday', '2003-04-02'),
    (4, 'Fifty Shades of Grey', 26.95, 'E. L. James', '9781612130286', 'Vintage Books', '2012-04-17'),
    (5, 'Twilight', 38.00, 'Stephenie Meyer', '0316160172', 'Little, Brown and Company', '2005-10-05'),
    (6, 'Hannibal', 66.60, 'Thomas Harris', '0385334877', 'Delacorte Press', '1999-06-08'),
    (7, 'The Hunger Games', 132.00, 'Suzanne Collins', '9780439023528', 'Scholastic Press', '2008-09-14'),
    (8, 'Life of Pi', 26.95, 'Yann Martel', '0676973760', 'Knopf Canada', '2001-09-11'),
    (9, 'The Last Olympian', 150.68, 'Rick Riordan', '9781423101475', 'Disney Hyperion', '2009-05-05');

-- Ensure that the users and authorities tables exist
CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255),
    enabled BOOLEAN
);

CREATE TABLE IF NOT EXISTS authorities (
    username VARCHAR(50),
    authority VARCHAR(50),
    FOREIGN KEY (username) REFERENCES users(username) ON DELETE CASCADE
);



INSERT INTO USERS (username, password, enabled) 
	VALUES ('admin', '{noop}admin', 1);
	


INSERT INTO AUTHORITIES (username, authority) 
	VALUES ('admin', 'ADMIN');
