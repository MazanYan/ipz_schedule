const express = require('express');
const router = express.Router();
const { loadMainpage } = require('../controllers/mainpage');
const { loadFeedback, sendFeedback } = require('../controllers/feedback');

router.get('/', loadMainpage);

router.get('/feedback', loadFeedback);

router.post('/feedback', sendFeedback);

module.exports = router;