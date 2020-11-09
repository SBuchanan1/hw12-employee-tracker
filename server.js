const mysql = require("mysql"),

const inquirer = require("inquirer"),

const cTable = require("console.table"),

    let roleList = [
        "Software Engineer I",
        "Software Engineer II",
        "Software Engineer III",
        "Marketing Manager",
        "Financial Analyst",
        "Human Resources",


    ];

const connection = mysql.createConnection({
    host: "localhost",
    port: 8080,
    user: "root",
    password: "developer22",
    database: "employee_trackerdb"
});
connection.connect(function (err) {
    if (err) throw err;
    console.groupCollapsed("connected as id " + connection.threadId);
    connection.end();
});

let query = "SELECT employee, role, department";
console.log(query);
connection.connect(function (err) {
    if (err) throw err;
    employeePrompt();
});

function employeePrompt() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choice: ["Add Employee", "Delete Employee"],
        }).then(function (answer) {
            switch (answer.action) {
                case "Add Employee":
                    addEmployee();
                    break;

                case "Delete Employee":
                    deleteEmployee();
                    break;
            }
        });

}

// Function
function addEmployee() {
    inquirer
        .prompt([
            {
                type: "input",
                name: "first_name",
                message: "What is the employee's first name?"
            },
            {
                type: "input",
                name: "last_name",
                message: "What is employee's last name?"
            },
            {
                type: "input",
                name: "role",
                message: "What is employee's role within the company?",

            }
        ]).then(function (answer) {
            switch (answer.input) {
                case "Find employee by name":
                    employeeSearch();
                    break;
            }
        });
}

function employeeSearch() {
    inquirer
        .prompt({
            name: "artist"
        })
}