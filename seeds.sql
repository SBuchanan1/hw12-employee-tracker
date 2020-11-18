USE employee_trackerdb;

INSERT INTO departments
    (department_name)
VALUES
    ("Sales"),
    ("IT"),
    ("HR"),
    ("Accounting"),
    ("Legal");

INSERT INTO roles
    (title, salary, department_id)
VALUES
    ("Sales Manager", 100000, 1),
    ("Sales Person", 50000, 1),
    ("IT Manager", 150000, 2),
    ("Software Engineer", 100000, 2),
    ("Data Engineer", 100000, 2),
    ("HR Coordinator", 60000, 3),
    ("Accountant", 125000, 4),
    ("Accounting Clerk", 50000, 4),
    ("Lawyer", 150000, 5),
    ("Legal Assistant", 50000, 5);

INSERT INTO employees
    (first_name, last_name, role_id, manager_id)
VALUES
    ("Sian", "Hayden", 1, null),
    ("Kingston", "James", 2, 1),
    ("Ali", "Jordan", 2, 1),
    ("Rohnan", "Grace", 3, null),
    ("Legacy", "Meadows", 4, 4),
    ("Jaxton", "Drain", 4, 4),
    ("Jerome", "Zachariah", 5, 4),
    ("Heidi", "Buchanan", 6, null),
    ("Nicole", "Duffus", 7, null),
    ("Katrina", "Sykes", 8, 9),
    ("Chris", "Trejos", 9, null),
    ("Alexa", "Garcia", 10, 11);

