var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.MYSQL_PW, // Getting the mysql password from the environment variable.
    database: 'join_us'
});

var sqlQuery = 'SELECT CURDATE() AS currentDate';

connection.query(sqlQuery, function (error, results, fields) {
    if (error) throw error;
    console.log(results);
    console.log(results[0].currentDate.toString());
});

connection.end();