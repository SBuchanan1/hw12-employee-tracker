USE employee_trackerdb;

CREATE TABLE departments
(
    id INT NOT NULL
    AUTO_INCREMENT,
    name VARCHAR
    (30),
    PRIMARY KEY
    (id)
);

    INSERT INTO departments
        (name)
    VALUES
        ("Engineering"),
        ("Finance"),
        ("Human Resources"),
        ("Marketing");

    SELECT *
    FROM departments;