// npm modules
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
require('dotenv').config();

// local modules
const quizRoute = require('./routes/quizRoute');
const questionRoute = require('./routes/questionRoute');

const app = express();

app.use(cors());
app.use('/api/quiz', quizRoute);
app.use('/api/question', questionRoute);

app.listen(process.env.PORT || 3000, () => {
    const port = (process.env.PORT) ? process.env.PORT : 3000;
    console.log('server running on ' + port);
});


