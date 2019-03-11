const path = require('path');
const dotenv = require('dotenv');
const jsonServer = require('json-server');
const server = jsonServer.create();
const router = jsonServer.router(path.join(__dirname, 'data/data.json'));
const middlewares = jsonServer.defaults();


/*
console.log('Variables Entorno', environment);

console.log('Variables Entorno process', process.env);
*/

if(process.env.NODE_ENV !== 'PRODUCTION'){

  dotenv.load();

}

const port =  process.env.PORT || environment.PORT || 3000;

server.use(middlewares);
server.use(router);
server.listen(port, () => {
  console.log('JSON Server is running');
});
