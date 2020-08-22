import React, { useEffect, useState } from 'react';
import {Link} from 'react-router-dom';

function Question(props) {
    useEffect( () => {
        fetchQuestion();
    }, []);

    const [currentQuestion, setQuestion] = useState({});

    const fetchQuestion = async () => {
        const response = await fetch(`http://localhost:3000/api/question/${props.match.params.quizId}/${props.match.params.questionNum}`);
        const data = await response.json();
        setQuestion(data);
    }

    return (
        <div>
            <h1>{currentQuestion.question}</h1>
            <img  style = { {width: '400px', height: '400px'}} src = {`../../pictures/${currentQuestion.image}.png`}/>
        
            {(currentQuestion.answers) ? 
                currentQuestion.answers.map((a) => {
                return (
                    <h3>{a.answer}</h3>
                )
            }) : ''
            }

        </div>
    );
}

export default Question;
