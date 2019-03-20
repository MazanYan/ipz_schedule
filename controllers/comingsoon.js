const path = require('path');

const absPath = path.dirname(__dirname);

const loadComingSoon = (req, res) => {
  res.sendFile(path.join(absPath, '/views/comingsoon.html'));
  setTimeout(() => {
    res.sendFile(path.join(absPath, '/views/index.html'))
  }, 1000);
};

module.exports = { loadComingSoon };