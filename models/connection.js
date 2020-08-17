const mysql = require('mysql2');

const connection = mysql.createPool({
    host: "localhost",
    user: "",
    password: "",
    database: ""
});

module.exports = connection;

/*
async function getAll() {
    const sql = "SELECT * FROM tableName";
    const [rows] = await connection.promise().query(sql);
    return rows;
} 
*/