var express = require('express');
var config = requrie('./config');
var app = express();

app.get('/',function (req, res) {
  res.send('Hello World!');
});

app.listen(config.port, function () {
  console.log('Example app listening on port 9090!');
});
