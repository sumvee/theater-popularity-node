import mysql from 'mysql';

const conn = mysql.createConnection({
  host: "127.0.0.1",
  user: "db",
  password: "db",
  port: "53128",
  database: "db"
});


export default conn;
