const express = require('express');

const question = require('../models/question');

const router = express.Router();

// @route GET /api/question/:QuizID/:QuestionNumber
// @desc Get specified question number from quiz with specified ID
router.get('/:id/:questionNumber', async (req, res) => {
    let quizID = req.params.id;
    let questionNumber = req.params.questionNumber;
    
    // ensure params are numbers 
    if(isNaN(quizID) || isNaN(questionNumber)) {
        return res.send('error');
    }

    try {
        let result = await question.Get(quizID, questionNumber);
        let parsedResult = question.parseResponse(result);
        return res.send(parsedResult);
    }
    
    catch {
        return res.send('error');
    }
});

module.exports = router;
