var express = require('express');
var mysql = require("mysql");
var app = express();

// Configuring our express application to set view engine.
// Other example for templating engine like ejs are Hade, Hamil.
app.set("view engine", "ejs")

/*
    We can use html inside the res.send() method.
    But its maintainability is very hard.

    How ejs works, is added as a screenshot in the current folder.
*/
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
        res.render("home", { user_count: count, favourite_color: 'green'});
    });
});

app.listen(8080, function () {
    console.log("Server running on 8080!");
});