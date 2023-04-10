var express = require('express');
var app = express();

app.get("/", function(req, res){
    // console.log("Welcome to JoinUs");
    console.log(req); // To print all the information from the request.
    res.send("Welcome to JoinUs");  // Print message in the webpage.
});

app.listen(8080, function(){
    console.log("Server running on 8080!");
});