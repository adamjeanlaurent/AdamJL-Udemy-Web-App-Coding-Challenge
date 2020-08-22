const express = require('express');
const quiz = require('../models/quiz');

const router = express.Router();

// @route GET /api/quiz
// @desc Get all quizzes
router.get('/', async (req, res) => {
    try {
        let serviceResponse = await quiz.Get();
        return res.send(serviceResponse);
    }
        
    catch {
        return res.send('error');
    }
}); 

module.exports = router;
