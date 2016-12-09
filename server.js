var express = require('express');
var config = require('./config');
var app = express();

app.get('/',function (req, res) {
  res.send('<h2>Hello World!!!!</h2>');
});

app.listen(config.port, function () {
  console.log('Example app listening on port 9090!');
});
