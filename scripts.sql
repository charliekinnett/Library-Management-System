CREATE TABLE Publisher (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    PublisherName VARCHAR(100),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);
CREATE TABLE Genre (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(50)
);
CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    ISBN VARCHAR(13),
    PublisherID INT,
    GenreID INT,
    PublicationYear YEAR,
    Availability BOOLEAN,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID),
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);
CREATE TABLE Member (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    MembershipStatus VARCHAR(50),
    RegistrationDate DATE
);
CREATE TABLE Librarian (
    LibrarianID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    HireDate DATE,
    JobTitle VARCHAR(100)
);
CREATE TABLE Borrowing (
    BorrowingID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    LibrarianID INT,
    CheckOutDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (LibrarianID) REFERENCES Librarian(LibrarianID)
);
 
INSERT INTO Publisher (PublisherName, Address, PhoneNumber, Email) 
VALUES ('Penguin Random House', '1745 Broadway, New York, NY 10019', '+1 (212) 782-9000', 'info@penguinrandomhouse.com');
INSERT INTO Publisher (PublisherName, Address, PhoneNumber, Email) 
VALUES ('HarperCollins Publishers', '195 Broadway, New York, NY 10007', '+1 (212) 207-7000', 'info@harpercollins.com');
INSERT INTO Publisher (PublisherName, Address, PhoneNumber, Email) 
VALUES ('Simon & Schuster', '1230 Avenue of the Americas, New York, NY 10020', '+1 (212) 698-7000', 'info@simonandschuster.com');
INSERT INTO Publisher (PublisherName, Address, PhoneNumber, Email) 
VALUES ('Macmillan Publishers', '120 Broadway, New York, NY 10271', '+1 (212) 226-7521', 'info@macmillan.com');
INSERT INTO Publisher (PublisherName, Address, PhoneNumber, Email) 
VALUES ('Hachette Book Group', '1290 Avenue of the Americas, New York, NY 10104', '+1 (212) 364-1100', 'info@hachettebookgroup.com');
INSERT INTO Genre (GenreName)
VALUES ('Fiction');
INSERT INTO Genre (GenreName)
VALUES ('Non-Fiction');
INSERT INTO Genre (GenreName)
VALUES ('Mystery');
INSERT INTO Genre (GenreName)
VALUES ('Science Fiction');
INSERT INTO Genre (GenreName)
VALUES ('Thriller');
INSERT INTO Librarian (Name, Email, PhoneNumber, Address, HireDate, JobTitle)
VALUES ('John Smith', 'john@example.com', '123-456-7890', '123 Main St, Cityville', '2022-01-15', 'Head Librarian');
INSERT INTO Librarian (Name, Email, PhoneNumber, Address, HireDate, JobTitle)
VALUES ('Emily Brown', 'emily@example.com', '987-654-3210', '456 Elm St, Townsville', '2022-02-20', 'Assistant Librarian');
INSERT INTO Librarian (Name, Email, PhoneNumber, Address, HireDate, JobTitle)
VALUES ('Michael Johnson', 'michael@example.com', '111-222-3333', '789 Oak St, Villagetown', '2022-03-10', 'Library Clerk');
INSERT INTO Librarian (Name, Email, PhoneNumber, Address, HireDate, JobTitle)
VALUES ('Sarah Wilson', 'sarah@example.com', '444-555-6666', '321 Pine St, Hamletville', '2022-04-05', 'Library Assistant');
INSERT INTO Librarian (Name, Email, PhoneNumber, Address, HireDate, JobTitle)
VALUES ('David Lee', 'david@example.com', '777-888-9999', '567 Maple St, Metropolis', '2022-05-15', 'Library Technician');
INSERT INTO Member (Name, Email, PhoneNumber, Address, MembershipStatus, RegistrationDate)
VALUES ('Alice Johnson', 'alice@example.com', '123-456-7890', '123 Main St, Cityville', 'Active', '2022-01-15');
INSERT INTO Member (Name, Email, PhoneNumber, Address, MembershipStatus, RegistrationDate)
VALUES ('Bob Smith', 'bob@example.com', '987-654-3210', '456 Elm St, Townsville', 'Active', '2022-02-20');
INSERT INTO Member (Name, Email, PhoneNumber, Address, MembershipStatus, RegistrationDate)
VALUES ('Emma Davis', 'emma@example.com', '111-222-3333', '789 Oak St, Villagetown', 'Active', '2022-03-10');
INSERT INTO Member (Name, Email, PhoneNumber, Address, MembershipStatus, RegistrationDate)
VALUES ('Grace Wilson', 'grace@example.com', '444-555-6666', '321 Pine St, Hamletville', 'Active', '2022-04-05');
INSERT INTO Member (Name, Email, PhoneNumber, Address, MembershipStatus, RegistrationDate)
VALUES ('James Brown', 'james@example.com', '777-888-9999', '567 Maple St, Metropolis', 'Active', '2022-05-15');
INSERT INTO Book (Title, Author, ISBN, PublisherID, GenreID, PublicationYear, Availability)
VALUES ('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 2, 1, 1960, true);
INSERT INTO Book (Title, Author, ISBN, PublisherID, GenreID, PublicationYear, Availability)
VALUES ('1984', 'George Orwell', '9780451524935', 4, 1, 1949, true);
INSERT INTO Book (Title, Author, ISBN, PublisherID, GenreID, PublicationYear, Availability)
VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 5, 1, 1925, true);
INSERT INTO Book (Title, Author, ISBN, PublisherID, GenreID, PublicationYear, Availability)
VALUES ('Pride and Prejudice', 'Jane Austen', '9780486284736', 3, 1, 1813, true);
INSERT INTO Book (Title, Author, ISBN, PublisherID, GenreID, PublicationYear, Availability)
VALUES ('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', '9780590353427', 1, 2, 1997, true);
INSERT INTO Borrowing (MemberID, BookID, LibrarianID, CheckOutDate, DueDate, ReturnDate)
VALUES (1, 1, 1, '2023-01-10', '2023-01-24', NULL);
INSERT INTO Borrowing (MemberID, BookID, LibrarianID, CheckOutDate, DueDate, ReturnDate)
VALUES (2, 2, 2, '2023-02-15', '2023-03-01', NULL);
INSERT INTO Borrowing (MemberID, BookID, LibrarianID, CheckOutDate, DueDate, ReturnDate)
VALUES (3, 3, 3, '2023-03-20', '2023-04-03', NULL);
INSERT INTO Borrowing (MemberID, BookID, LibrarianID, CheckOutDate, DueDate, ReturnDate)
VALUES (4, 4, 4, '2023-04-25', '2023-05-09', NULL);
INSERT INTO Borrowing (MemberID, BookID, LibrarianID, CheckOutDate, DueDate, ReturnDate)
VALUES (5, 5, 5, '2023-05-30', '2023-06-13', NULL);
