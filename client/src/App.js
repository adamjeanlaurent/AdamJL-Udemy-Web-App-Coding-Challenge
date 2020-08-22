import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import Question from './components/Question';
import Results from './components/Results';
import Home from './components/Home';
import NOTFOUND from './components/NOTFOUND';

function App() {
  return (
    <Router>
      <div className = 'App'>
        // put nav bar here
        <Switch>
          <Route path='/' exact component={Home}/>
          <Route path='/question/:quizId/:questionNum' exact component={Question}/>
          <Route path='/results' exact component={Results}/>
          <Route path='/' component={NOTFOUND}/>
        </Switch>
      </div>
    </Router>
  );
}

export default App;
