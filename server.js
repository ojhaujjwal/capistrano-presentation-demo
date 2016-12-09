var express = require('express');
var config = require('./config');
var app = express();

app.get('/',function (req, res) {
  res.send('Hello World123!');
});

app.listen(config.port, function () {
  console.log('Example app listening on port 9090!');
});
