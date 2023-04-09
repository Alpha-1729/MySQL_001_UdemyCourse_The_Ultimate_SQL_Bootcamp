var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.MYSQL_PW, // Getting the mysql password from the environment variable.
    database: 'join_us'
});

// Bulk inserting data.
var data = [];

for (var i = 0; i < 500; i++) {
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}

connection.query('INSERT INTO users (email, created_at) VALUES ?', [data], function (error, results) {
    if (error) throw error;
    console.log(results);
});

connection.end();