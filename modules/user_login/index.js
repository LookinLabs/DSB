const express = require('express');
const bodyParser = require('body-parser');

// eslint-disable-next-line new-cap
const router = express.Router();

// Import users from JSON file
const users = require('../../users.json');

router.use(bodyParser.urlencoded({extended: false}));

router.post('/', (req, res) => {
  const username = req.body.username;
  const password = req.body.password;

  if (users[username] && users[username] === password) {
    // Redirect to another page after successful login
    res.redirect('/application');
  } else {
    res.render('index', {message: 'Invalid credentials'});
  }
});

module.exports = router;
