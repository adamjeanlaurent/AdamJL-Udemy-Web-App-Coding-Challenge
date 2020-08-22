// npm modules
const express = require('express');
const cors = require('cors');
require('dotenv').config();

// local modules
const quizRoute = require('./routes/quizRoute');
const questionRoute = require('./routes/questionRoute');

const app = express();

// middleware  
app.use(cors());
app.use('/api/quiz', quizRoute);
app.use('/api/question', questionRoute);

app.listen(process.env.PORT || 3000, () => {
    console.log('server running');
});
