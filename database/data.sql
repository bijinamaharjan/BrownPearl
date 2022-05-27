
CREATE TABLE student(
    RegNo INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(25) NOT NULL,
    MiddleName VARCHAR(25),
    LastName VARCHAR(25) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    PermanentAddress VARCHAR(100) NOT NULL,
    TemporaryAddress VARCHAR(100) NOT NULL,
    Mobile VARCHAR(10) UNIQUE NOT NULL,
    Email VARCHAR(25) UNIQUE NOT NULL,
    DOB DATE NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ProfilePhoto VARCHAR(50)
);

CREATE TABLE father(
    RegNo INT,
    FirstName VARCHAR(25) NOT NULL,
    MiddleName VARCHAR(25),
    LastName VARCHAR(25) NOT NULL,
    Occupation VARCHAR(25) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Mobile VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (RegNo) REFERENCES student(RegNo)
);

CREATE TABLE mother(
    RegNo INT,
    FirstName VARCHAR(25) NOT NULL,
    MiddleName VARCHAR(25),
    LastName VARCHAR(25) NOT NULL,
    Occupation VARCHAR(25) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Mobile VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (RegNo) REFERENCES student(RegNo)
);

CREATE TABLE guardian(
    RegNo INT,
    FirstName VARCHAR(25) NOT NULL,
    MiddleName VARCHAR(25),
    LastName VARCHAR(25) NOT NULL,
    Occupation VARCHAR(25) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Mobile VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (RegNo) REFERENCES student(RegNo)
);

CREATE TABLE spouse(
    RegNo INT,
    FirstName VARCHAR(25) NOT NULL,
    MiddleName VARCHAR(25),
    LastName VARCHAR(25) NOT NULL,
    Occupation VARCHAR(25) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Mobile VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (RegNo) REFERENCES student(RegNo)
);

INSERT INTO student(FirstName, MiddleName, LastName, Gender, PermanentAddress, TemporaryAddress, Mobile, Email, DOB) VALUES
('Frank', 'Lloyd', 'Wright', 'Male', 'Richland Center, Wisconsin, U.S.', 'Phoenix, Arizona, U.S.', '9887186791', 'frankwright67@gmail.com', '1867-06-08'),
('Mary','' ,'Borthwick', 'Female', 'Boone, Iowa, U.S.', 'Spring Green, Wisconsin, U.S.', '9881906186', 'maryborthwick69@gmail.com', '1869-06-19');

INSERT INTO father VALUES
(1, 'William', 'Cary', 'Wright', 'Musician', 'Massachusetts', '9881825190'),
(2, 'Marcus', 'Smith', 'Borthwick', 'Engineer', 'Boone', '9880912518');