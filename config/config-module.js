exports.config = function(environment =  'development')  {
  //console.log('environment',environment);
  var envJSON = require('./env.json');
  var node_env = process.env.NODE_ENV || environment;
  return envJSON[node_env];
};
