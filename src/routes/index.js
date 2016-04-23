var express = require('express');
var os = require('os');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'System Information', hostname: os.hostname(), platform: os.platform()});
});

module.exports = router;
