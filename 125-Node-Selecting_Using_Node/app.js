var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.MYSQL_PW, // Getting the mysql password from the environment variable.
    database: 'join_us'
});

// var sqlQuery = 'SELECT * FROM users;';
var sqlQuery = 'SELECT COUNT(*) AS total FROM users;';

connection.query(sqlQuery, function (error, results, fields) {
    if (error) throw error;
    console.log(results[0].total);
});

connection.end();