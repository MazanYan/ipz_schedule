const express = require('express');
const app = express();
const mongoose = require('mongoose');
const expressValidator = require('express-validator');
const expressSession = require('express-session');

const db = require('./config/keys').MongoURI;
/* Connect to mongo */
mongoose.connect(db, { useNewUrlParser: true })
  .then(() => {
    console.log('Mongo db connected');
  })
  .catch(err => {
    console.log(err);
  });

/* bodyparser */
app.use(express.urlencoded({ extended: false }));
app.use(expressValidator());
app.use(expressSession({ secret: 'false', saveUninitialized: false, resave: false }));

/* router */
app.use('/', require('./routes/index'));

/* static files */
app.use(express.static(__dirname + '/public'));

const PORT = process.env.PORT || 2000;
app.listen(PORT, console.log(`Server started on ${PORT}`));