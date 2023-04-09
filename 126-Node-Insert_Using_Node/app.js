var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.MYSQL_PW, // Getting the mysql password from the environment variable.
    database: 'join_us'
});

var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};

var end_results = connection.query('INSERT INTO users SET ?', person, function (error, results) {
    if (error) throw error;
    console.log(results);
});
console.log(end_results.sql); // Show us the actual query executed.

connection.end();