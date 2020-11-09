USE employee_trackerdb;

CREATE TABLE role
(
    id INT NOT NULL
    AUTO_INCREMENT PRIMARY KEY, 
     title VARCHAR
    (30) NOT NULL,
     salary DECIMAL NOT NULL, 
    department_id INT NOT NULL, 
    INDEX dep_index
    (department_id),
    CONSTRAINT fk_department FOREIGN KEY
    (department_id) REFERENCES departments
    (id)
        ON
    DELETE CASCADE
    ):







    INSERT INTO role
        (title,salary,department_id)
    VALUES
        ("Software Engineer I", 107000.75, 1),
        ("Software Engineer II", 140000.89, 1),
        ("Marketing Manager", 110000.62, 3),
        ("Financial Analyst", 70000.36, 4),
        ("Human Resources", 89000.23, 2 ),
        ("Software Engineer III", 160000.43, 1);

    SELECT *
    FROM role;
    
