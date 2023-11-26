const express = require("express");
const ejs = require('ejs');
const path = require('path');
const userLogin = require('./modules/user_login'); // adjust the path according to your project structure

const app = express();
const port = process.env.BACKEND_SERVER_PORT || 3000;

// Call up connection with database
const client = require("./connection/database.js");

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'public'));

app.use('/', userLogin);

app.get('/', function(req, res) {
    res.render('index');
});

app.get('/application', function(req, res) {
    res.render('application');
});


app.listen(port, () => {
    console.log(`App listening at http://localhost:${port}`);
});