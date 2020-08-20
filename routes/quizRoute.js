const express = require('express');
const quiz = require('../models/quiz');

const router = express.Router();

// @route /api/quiz
// @desc Returns all quizzes from DB
router.get('/', async (req, res) => {
    try {
        let result = await quiz.Get();
        return res.send(result);
    }
    
    catch {
        return res.send('error');
    }
}); 

module.exports = router;