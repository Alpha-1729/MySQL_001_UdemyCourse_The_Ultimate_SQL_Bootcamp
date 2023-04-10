var express = require('express');
var app = express();

app.get("/", function(req, res){
    res.send("Welcome to JoinUs");  // Print message in the webpage.
});

app.get("/joke", function(req, res){
    res.send("This is a simple joke.");
});

app.get("/random_num", function(req, res){
    var random_num = Math.floor(Math.random() * 10) + 1; // Generation a random number.
    res.send("Your lucky number is: " + random_num);
});

app.listen(8080, function(){
    console.log("Server running on 8080!");
});