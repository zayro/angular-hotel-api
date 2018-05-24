const {
  isObject
} = require('util');
const express = require('express');

const router = express.Router();

const checkBdd = '../middleware/check-db';

const db = require('../../library/postgresql-query');

db.config({
  username: 'ytqhproxiwopyo',
  password: '4b421fdd8f641d916b0784c645edf0a3c4d7c9bc3ef2d551f5893b019ba4e1e5',
  host: 'ec2-23-23-130-158.compute-1.amazonaws.com',
  database: 'd550g8hj5ppqm1'
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