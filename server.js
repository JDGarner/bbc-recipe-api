var express = require('express');
var index = require('./routes/recipes');
var app = express();

app.use('/', index);

var port = process.env.PORT || '3001';

app.listen(port, function(error) {
  if (error) throw error;
  console.log('Server running on port ' + port);
});

module.exports = app;
