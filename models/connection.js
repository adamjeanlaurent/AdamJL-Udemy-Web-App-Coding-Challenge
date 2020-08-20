const mysql = require('mysql2');
require('dotenv').config({path: '../.env'});

const connection = mysql.createPool({
    host: process.env.HOST,
    user: process.env.USERNAME,
    password: process.env.PASSWORD,
    database: process.env.DATABASE
});

module.exports = connection;
