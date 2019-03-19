const path = require('path');

const absPath = path.dirname(__dirname);

const loadMainpage = (req, res) => {
  res.sendFile(path.join(absPath, '/views/index.html'));
}

module.exports = { loadMainpage };