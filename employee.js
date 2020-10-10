const mysql = require("mysql"),
const inquirer = require("inquirer"),

const connection = mysql.createConnection({
    host: "localhost",
    port: 8080,
    user: "root",
    password: "developer22",
    database: "employee_trackerdb"
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
            type: "rawlist",
            message: "What would you like to do?",
            choice: ["Add Employee", "Delete Employee"],
        })
        .then(function (answer)) {
        switch (answer.action) {
            case: "Add Employee":
                addEmployee();
                break;

            case "Delete Employee":
                deleteEmployee();
                break;
        }
    }

}

// Function
function addEmployee() {
    inquirer
        .prompt([
            {
                name: "employee_first_name",
                type: "input",
                message: "What is the employee's first name?"
            }
        ])
}