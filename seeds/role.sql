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
        ('Salesperson', 80000, ' '),
        ('Sales Lead'),
        ('Finacne')
    , 
