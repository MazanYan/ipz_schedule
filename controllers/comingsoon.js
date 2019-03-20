const path = require('path');

const absPath = path.dirname(__dirname);

const loadComingSoon = (req, res) => {
  res.sendFile(path.join(absPath, '/views/comingsoon.html'));
};

module.exports = { loadComingSoon };