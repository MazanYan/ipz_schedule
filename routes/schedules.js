const express = require('express');
const router = express.Router();

const { loadComingSoon } = require('../controllers/comingsoon');

router.get('/teachschedule', loadComingSoon);

router.get('/exams', loadComingSoon);

module.exports = router;