const path = require('path');

const Feedback = require('../models/Feedback');

const absPath = path.dirname(__dirname);


const loadFeedback = (req, res) => {
  res.sendFile(path.join(absPath, '/views/feedback.html'));
}

const sendFeedback = (req, res) => {
  const { email, message } = req.body;

  const regExp = /\S+@\S+\.\S+/;

  if (!message) {
    console.log('invalid message');
    res.redirect('/feedback');
  }
  if (!email || email.toString().length > 50 || !regExp.test(email)) {
    console.log('invalid email');
    res.redirect('/feedback');
  } else {
    console.log('no errors');
    const newFeedback = new Feedback({
      email: req.body.email,
      message: req.body.message
    });
    newFeedback.save()
      .then(result => {
        console.log(result);
        res.redirect('/');
      })
      .catch(err => console.log(err));
  }
}

module.exports = { loadFeedback, sendFeedback };