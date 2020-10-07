DROP DATABASE IF EXISTS employee_trackerdb;
CREATE DATABASE employee_trackerdb;
USE employee_trackerdb;

CREATE TABLE departments
(
    id INT
    unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR
    (30) NOT NULL);

    CREATE TABLE role
    (
        id INT
        unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY, 
        title VARCHAR
        (30) NOT NULL, 
        salary DECIMAL unsigned NOT NULL, 
        department_id INT unsigned NOT NULL,
        INDEX sep_index
        (department_id),
        CONSTRAINT fk_department FOREIGN KEY
        (department_id) REFERENCES departments
        (id)ON
        DELETE CASCADE);

        CREATE TABLE employee
        (
            id INT
            unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR
            (30) NOT NULL, 
            last_name VARCHAR
            (30) NOT NULL, 
            role_id INT unsigned NOT NULL, 
            INDEX role_inde
            (role_id),
            CONSTRAINT fk_role FOREIGN KEY,
            (role_id) REFERENCES role
            (id) ON
            DELETE CASCADE, manager_id INT unsigned, 
            INDEX man_index
            (manager_id),
            CONSTRAINT fk_manager FOREIGN KEY
            (manager_id) 
            REFERENCES employee
            (id) ON
            DELETE
            SET NULL
            );
