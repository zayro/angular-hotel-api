import Sequelize from 'sequelize';

export default class Admin {
  constructor(engine = 'postgres', username = 'zayro', password = 'zayro', server = 'localhost', port = '5432') {
    // const newLocal = 'postgres://zayro:zayro@localhost:5432/prueba';
    const newLocal = `${engine}://${username}:${password}@${server}:${port}/prueba`;
    // super(`${engine}://${username}:${password}@${server}:${port}/prueba`);
    this.db = new Sequelize(newLocal);
    this.username = username;

    this.db
      .authenticate()
      .then(() => {
        console.log('Connection has been established successfully Postgres.');
      })
      .catch((err) => {
        console.error('Unable to connect to the database:', err);
      });
  }

  all(table) {
    try {
      return this.db.query(`SELECT * FROM ${table} ;`, { type: Sequelize.QueryTypes.SELECT });
    } catch (e) {
      console.log(e);
    }
  }

  search(table, field, condition = '1') {
    try {
      return this.db.query(`SELECT ${field} FROM ${table} WHERE ${condition};`, { type: Sequelize.QueryTypes.SELECT });
    } catch (e) {
      console.log(e);
    }
  }

  add(table, info) {
    this.bd.transaction({
      isolationLevel: Sequelize.Transaction.SERIALIZABLE,
    }, (t) => {

      // your transactions
      // this.db.query(`INSERT INTO ${table}  VALUES ($1, $2)`, { bind: info, type: Sequelize.QueryTypes.INSERT }, { transaction });

    }).then((result) => {
    // transaction has been committed. Do something after the commit if required.
    }).catch((err) => {
    // do something with the err.
    });
  }
}
/*
const testing = new Admin();
testing.ManualQuery('producto');
console.log(module);
*/
