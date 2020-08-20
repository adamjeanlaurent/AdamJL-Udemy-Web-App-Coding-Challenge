const connection = require('./connection');

class Quiz {
    static async Get() {
        const sql = 'SELECT * FROM quizzes;';
        const [rows] = await connection.promise().query(sql);
        return rows;
    }
};

module.exports = Quiz;
