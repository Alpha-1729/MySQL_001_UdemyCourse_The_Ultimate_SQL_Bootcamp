var express = require('express');
var mysql = require("mysql");
var app = express();

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.MYSQL_PW, // Getting the mysql password from the environment variable.
    database: 'join_us'
});

app.get("/", function (req, res) {

    // Find the count of users in the DB.
    var q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, function (err, results) {
        if (err) throw err;
        var count = results[0].count;
        res.send("We have " + count + " users in our db.");
``    });
});

app.listen(8080, function () {
    console.log("Server running on 8080!");
});