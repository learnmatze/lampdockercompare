
CREATE TABLE Persons (
  PK_Person int NOT NULL,
  Firstname varchar(255) DEFAULT NULL,
  Lastname varchar(255) DEFAULT NULL,
  age int DEFAULT NULL,
  socialsecuritynumber varchar(30) DEFAULT NULL
);

ALTER TABLE Persons
  ADD PRIMARY KEY (PK_Person);

INSERT INTO Persons (PK_Person, Firstname, Lastname, age, socialsecuritynumber) VALUES
(1, 'John', 'Doe', 30, '123-45-6789'),
(2, 'Jane', 'Smith', 25, '987-65-4321'),
(3, 'Michael', 'Johnson', 35, '234-56-7890'),
(4, 'Emily', 'Williams', 28, '876-54-3210'),
(5, 'Christopher', 'Brown', 40, '345-67-8901'),
(6, 'Olivia', 'Davis', 22, '210-98-7654'),
(7, 'Daniel', 'Miller', 33, '789-01-2345'),
(8, 'Sophia', 'Martinez', 27, '567-89-0123'),
(9, 'Matthew', 'Taylor', 38, '432-10-9876'),
(10, 'Ava', 'Moore', 29, '109-87-6543'),
(11, 'James', 'Anderson', 32, '678-90-1234'),
(12, 'Emma', 'White', 31, '456-78-9012'),
(13, 'William', 'Lee', 36, '321-09-8765'),
(14, 'Isabella', 'Jackson', 24, '890-12-3456'),
(15, 'Benjamin', 'Harris', 37, '543-21-0987'),
(16, 'Mia', 'Thomas', 26, '012-34-5678'),
(17, 'Elijah', 'Hall', 34, '789-23-4567'),
(18, 'Charlotte', 'Walker', 23, '234-56-7891'),
(19, 'Logan', 'Perez', 39, '567-89-0123'),
(20, 'Amelia', 'Turner', 28, '345-67-8902');

CREATE TABLE Adresses ( PK_Adress int NOT NULL,
  Street varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL);

ALTER TABLE Adresses
  ADD PRIMARY KEY (PK_Adress);