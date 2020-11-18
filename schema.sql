DROP DATABASE IF EXISTS employee_trackerdb;
CREATE DATABASE employee_trackerdb;
USE employee_trackedb;

CREATE TABLE departments;
(
        id INT
        AUTO_INCREMENT,
    department_name VARCHAR
(30) NOT NULL,
    PRIMARY KEY
(id)
);

CREATE TABLE roles
(
        id INT
        AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR
        (30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY
        (department_id) REFERENCES departments
        (id)
);

        CREATE TABLE employees
        (
                id INT
                AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR
                (30) NOT NULL,
    last_name VARCHAR
                (30) NOT NULL,
    role_id INT,
    manager_id INT,
    CONSTRAINT fk_role FOREIGN KEY
                (role_id) REFERENCES roles
                (id),
    CONSTRAINT fk_manager FOREIGN KEY
                (manager_id) REFERENCES employees
                (id)
);
       