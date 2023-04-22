var express = require('express');
var mysql = require("mysql");
var bodyParser = require("body-parser")
var app = express();

// Configuring our express application to set view engine.
// Other example for templating engine like ejs are Hade, Hamil.
app.set("view engine", "ejs")

app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static(__dirname + "/public")); // To add link to the css file.

/*
    How do we get the data from the form.
        We a post request in the form to get the data from the form.
        If we use a get request instead of a post request in the form, data from the form is visible in the url like "?email=nothing@gmail.com"

*/
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.MYSQL_PW, // Getting the mysql password from the environment variable.
    database: 'join_us'
});

app.post("/register", function(req, res){
    // Extracting email from the post request.
    console.log(req.body);
    
    // Inserting user into the database.
    var person ={
        email: req.body.email
    };

    connection.query('INSERT INTO users SET ?', person, function (error, results) {
        if (error) throw error;
        console.log(results);
        // res.send("Thanks for joining our waitlist!"); // To show a success message.
        res.redirect("/");
    });
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