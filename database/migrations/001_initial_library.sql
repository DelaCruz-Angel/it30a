-- Table #1 student table
CREATE TABLE IF NOT EXISTS students (

    -- Primary key for the student table
    student_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Student name
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    -- Student course
    student_course VARCHAR(50) NOT NULL,

    -- Student created at timestamp
    student_created_at TIMESTAMP NOT NULL 
    DEFAULT CURRENT_TIMESTAMP

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- table #2 books 

CREATE TABLE IF NOT EXISTS books (
    
    -- Primary key for books table
    book_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Book details
    book_title VARCHAR(50) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    -- Book created at timestamp
    book_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Table #3 borrow
CREATE TABLE IF NOT EXISTS borrow(
    
    -- Primary key for borrow table
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Foreign key references
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    -- Borrow timestamp not null by default
    borrow_date TIMESTAMP NOT NULL 
    DEFAULT CURRENT_TIMESTAMP,

    -- Borrow return timestamp null by default
    borrow_return_date TIMESTAMP NULL 
    DEFAULT NULL,

    -- Borrow table constraints and foreign keys
    CONSTRAINT fk_borrow_student 
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    CONSTRAINT fk_borrow_book
    FOREIGN KEY (book_id)
    REFERENCES books(book_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Insert statements #1: Insert students
INSERT INTO students (
    student_first_name,
    student_last_name,
    student_course
) VALUES
("Angel","Dela Cruz","BSIT"),
("James","Smith","BSIT"),
("Jane","Watson","BSCS"),
("Nicole","David","BSCS");


-- Insert statements #2: Insert Books
INSERT INTO books (
    book_title,
    book_author,
    book_category
) VALUES
("Harry Potter","J.K.Rowling","Fantasy"),
("The great gatsby","F.Scott Fitzgerald","Tragedy"),
("The catcher","J.D.Salinger","Fiction");


-- Insert statements #3: Insert Borrow Transactions
INSERT INTO borrow (
    student_id,
    book_id
) VALUES
(1,2),
(2,1),
(3,3);
