import React, { useEffect, useState } from 'react';
import {Link} from 'react-router-dom';

function Home() {
    useEffect(() => {
        fetchQuizzes();
    },[]);

    const [quizzes, setQuizzes] = useState([]);

    const fetchQuizzes = async () => {
        const response = await fetch('http://localhost:3000/api/quiz');
        const data = await response.json();
        setQuizzes(data);
    };

    return (
        <div>
            {quizzes.map((quiz) => {
                return (
                    <h1 key={quiz.id}>
                    <Link to={`/question/${quiz.id}/${1}`}>{quiz.title}</Link>
                    </h1>
                )
            })}
        </div>
    );
}

export default Home;