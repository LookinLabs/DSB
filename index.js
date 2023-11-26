// Require packages
const express = require('express');
const path = require('path');

// adjust the path according to your project structure
const userLogin = require('./modules/user_login');

// Create express app
const app = express();
const port = process.env.BACKEND_SERVER_PORT || 3000;

// Set public as frontend
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'public'));

// Set up routes
app.use('/', userLogin);
app.use(express.static('public'));

app.get('/', function(req, res) {
  res.render('index');
});

app.get('/application', function(req, res) {
  res.render('application');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
