DROP DATABASE IF EXISTS employee_trackerdb;
CREATE DATABASE employee_trackerdb;
USE employee_trackerdb;

DROP TABLE employee;

CREATE TABLE employee
(
        id INT NOT NULL
        AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR
        (30) NOT NULL, 
last_name VARCHAR
        (30) NOT NULL, 
role_id INT NOT NULL, 
INDEX role_index
        (role_id),
CONSTRAINT fk_role FOREIGN KEY
        (role_id) REFERENCES role
        (id)ON
        DELETE CASCADE, 
manager_id INT , 
INDEX man_index
        (manager_id),
CONSTRAINT fk_manager FOREIGN KEY,
        (manager_id) REFERENCES employee
        (id) ON
        DELETE
        SET NULL
        );

        INSERT INTO employee
                (first_name, last_name, role_id, manager_id)
        VALUES
                ("Sian", "Hayden", 1, null),
                ("Kingston", "James", 2, null),
                ("Ali", "Jordan", 3, null),
                ("Rohnan", "Grace", 4, null),
                ("Jaxton", "Drain", 3, null),
                ("Jerome", "Zachariah", 5, null);

        UPDATE employee
        SET manager_id = 3
        WHERE id = 1;

        SELECT *
        FROM employee;


      






  
