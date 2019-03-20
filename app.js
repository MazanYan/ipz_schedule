const express = require('express');
const app = express();
const mongoose = require('mongoose');

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

/* router */
app.use('/', require('./routes/index'));
app.use('/schedules', require('./routes/schedules'));

/* static files */
app.use(express.static(__dirname + '/public'));

const PORT = process.env.PORT || 2000;
app.listen(PORT, console.log(`Server started on ${PORT}`));