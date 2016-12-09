var express = require('express');
var config = require('./config');
var app = express();

app.get('/',function (req, res) {
  res.send('<h3>Hello World!!</h3>');
});

app.listen(config.port, function () {
  console.log('Example app listening on port 9090!');
});
