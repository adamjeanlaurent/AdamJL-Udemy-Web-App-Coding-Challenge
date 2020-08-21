const connection = require('./connection');

class Question {
    static async Get(quizID, questionNumber) {
        let sql = `SELECT questions.question, questions.image, answers.correct, answers.answer FROM questions INNER JOIN answers ON (questions.quizID = ${quizID} AND questions.id = answers.questionId AND questions.number = ${questionNumber});`;
        const [rows] = await connection.promise().query(sql);
        return rows;
    }

    static parseResponse(json) {
        /*
            Trims down JSON from sql join to a more pruned and usable version
            example result: 

            {
                "question": "What country is highlighted in red?",
                "image": "chad",
                "answers": [
                    {
                        "answer": "Chad",
                        "correct": true
                    },
                    {
                        "answer": "Libya",
                        "correct": true
                    },
                    {
                        "answer": "Sudan",
                        "correct": true
                    },
                    {
                        "answer": "Central Africa Republic",
                        "correct": true
                    }
                ]
            }

        */
        let parsedObj = {};
        parsedObj.question = json[0].question;
        parsedObj.image = json[0].image;
        parsedObj.answers = [];
        for(let o of json) {
            parsedObj.answers.push(
                {
                    answer: o.answer,
                    correct: Boolean(o.correct[0])
                }
            );
        }

        return JSON.stringify(parsedObj);
    }
}

module.exports = Question;