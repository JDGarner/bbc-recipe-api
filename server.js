var express = require('express');
var routes = require('./routes');
var app = express();

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.use('/', routes);

var port = process.env.PORT || '3001';

app.listen(port, function(error) {
  if (error) throw error;
  console.log('Server running on port ' + port);
});

module.exports = app;
