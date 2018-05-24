// Modules NodeJs
const http = require('http');
const dotenv = require('dotenv');

// Module API
const app = require('../app');
const environment = require('../config/config-module.js').config();

/*
console.log('Variables Entorno', environment);

console.log('Variables Entorno process', process.env);
*/

if(process.env.NODE_ENV !== 'PRODUCTION'){

    dotenv.load();

}

const port =  process.env.PORT || environment.PORT || 3000;

const server = http.createServer(app);

console.log('http://localhost:'+port);

server.listen(port);


