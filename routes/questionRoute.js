const express = require('express');

const question = require('../models/question');

const router = express.Router();

// @route 
// @desc /api/question/:QuizID/:QuestionNumber
router.get('/:id/:questionNumber', async (req, res) => {
    let quizID = req.params.id;
    let questionNumber = req.params.questionNumber;

    // ensure params are numbers 
    if(isNaN(quizID) || isNaN(questionNumber)) {
        return res.send('error');
    }

    try {
        let result = await question.Get(quizID, questionNumber);
        return res.send(question.parseResponse(result));
    }
    
    catch {
        return res.send('error');
    }
});

module.exports = router;