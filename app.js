// set up ======================================================================

// Modules NodeJs
const express = require('express');
const app = express();
const morgan = require('morgan');
const bodyParser = require('body-parser');




app.use(morgan('dev'));
app.use('/uploads', express.static('uploads'));
app.use(bodyParser.urlencoded({
  extended: false,
}));

app.use(bodyParser.json());

// Route Access-Control-Allow-Origin
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');

  if (req.method === 'OPTIONS') {
    res.header('Access-Control-Allow-Methods', 'PUT, POST, PATCH, DELETE, GET');
    return res.status(200).json({});
  }
  next();
  return true;
});

// Routes which should handle requests
// routes ======================================================================
// require('./src/routes/index')(app);
// Module Route
const Route = require('./src/routes/index');
app.use('/admin', Route.adminRoutes);



// Route Not Found
app.use((req, res, next) => {
  const error = new Error('Not found');
  error.status = 404;
  next(error);
});

// Route Handle Errors
app.use((error, req, res, next) => {
  res.status(error.status || 500);
  res.json({
    error: {
      message: error.message,
    },
  });
  next(error);
});

// app.listen(3000, () => console.log('Example app listening on port 3000!'))

module.exports = app;
