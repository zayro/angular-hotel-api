const {
  isObject
} = require('util');
const express = require('express');

const router = express.Router();

const db = require('../../library/postgresql-query');

db.config({
  username: 'oafykctgcovioc',
  password: '49548284326668a5efa7978b981a912e10b28f500cdb7e8cf40b9179e4e97d58',
  host: 'ec2-54-243-235-153.compute-1.amazonaws.com',
  database: 'd7ireino6c2qug'
});



function message(status, response, message) {
  const data = {};
  data.status = status;
  data.data = response;
  data.message = message;

  return data
}

router.get('/getAll/:table/', (req, res) => {

  db.query(`SELECT * FROM ${req.params.table}; `, (err, response) => {

    if (!err) {
      return res.status(200).json(message(true, response, "Se consulto exitosamente"));
    } else {
      return res.status(500).json(message(false, err, "Ocurrio un problema al consultar"));
    }

  });

});

router.get('/query/:table/', (req, res) => {
  
  db.query(`SELECT * FROM ${req.params.table} WHERE ${Object.keys(req.query)} LIKE '%${Object.values(req.query)}%'  `, (err, response) => {

    if (!err) {
      return res.status(200).json(message(true, response, "Se consulto exitosamente"));
    } else {
      return res.status(500).json(message(false, err, "Ocurrio un problema al consultar"));
    }

  });

});

router.post('/inserts/', (req, res) => {


  db.queryInsert(req.body, (err, insertedRow) => {
    if (!err) {
      console.log(insertedRow);
      res.status(201).json(insertedRow);
    } else {
      console.log(err);
      res.status(500).json(err);
    }
  });



});

router.post('/insert/:table/:field', (req, res) => {

  const save = {};

  save.fields = req.body;

  db.max(req.params.table, req.params.field, (err, data) => {

    if (err) {
      res.status(500).json(err);
      return false;
    }

    save.table = req.params.table;

    save.fields = Object.assign(data[0], save.fields);

    db.queryInsert(save, (err, response) => {
      if (!err) {
        res.status(201).json(message(true, response, "almacenado"));
      } else {
        console.log(err);
        res.status(500).json(message(false, err, "Ocurrio un problema al insertar"));
      }
    });

  });

});

router.put('/update/:table/', (req, res) => {
  
    const save = {};

    save.table = req.params.table; 

    save.fields = req.body;

    save.where = req.query;

    db.queryUpdate(save, (err, response) => {
      if (!err) {
        res.status(201).json(message(true, response, "Actualizado"));
      } else {
        console.log(err);
        res.status(500).json(message(false, err, "Ocurrio un problema al actualizar"));
      }
    });

});

router.put('/updates/', (req, res) => {

  db.queryUpdate(req.body, (err, updatedRow) => {
    if (!err) {
      console.log(updatedRow);
      res.status(200).json(updatedRow);
    } else {
      console.log(err);
      res.status(500).json(err);
    }
  });


});

router.delete('/delete/:table/', (req, res) => {

  const save = {};

  save.table = req.params.table;   

  save.where = req.query;

  console.log(save);

  db.queryDelete(save, (err, response) => {
    if (!err) {
      console.log(response);
      res.status(200).json(response);
    } else {
      console.log(err);
      res.status(500).json(err);
    }
  });

});



module.exports = router;