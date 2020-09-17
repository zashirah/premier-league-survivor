import React, { useState } from 'react';
import Layout from './shared/Layout';
import { Switch, Route, useHistory } from 'react-router-dom';

import Login from './screens/Login'
import { loginUser } from './services/auth';

function App() {
  const history = useHistory()
  const [currentUser, setCurrentUser] = useState(null)


  const loginSubmit = async (loginData) => {
    const userData = await loginUser(loginData)
    setCurrentUser(userData)
    history.push('/')
  }


  return (
    <Layout>
      <Switch>
        <Route path="/login">
          <Login loginSubmit={loginSubmit} />
        </Route>
        <Route path="/register"></Route>
        <Route path="/"></Route>
        <Route path="/leagues"></Route>
        <Route path="/picks"></Route>
        <Route path="/schedule"></Route>
      </Switch>
    </Layout>
  )
}

export default App;
