import React, { useState } from 'react';
import Layout from './components/shared/Layout';
import { Switch, Route, useHistory } from 'react-router-dom';

import Login from './screens/Login'
import { loginUser, registerUser } from "./services/auth"
import Register from './screens/Register';

function App() {
  const history = useHistory()
  const [currentUser, setCurrentUser] = useState(null)


  const loginSubmit = async (loginData) => {
    const userData = await loginUser(loginData)
    setCurrentUser(userData)
    history.push('/')
  }

  const registerSubmit = async (registerData) => {
    const userData = await registerUser(registerData)
    setCurrentUser(userData)
    history.push("/")
  }

  return (
    <Layout>
      <Switch>
        <Route path="/login">
          <Login loginSubmit={loginSubmit} />
        </Route>
        <Route path="/register">
          <Register registerSubmit={registerSubmit}/>
        </Route>
        <Route path="/"></Route>
        <Route path="/leagues"></Route>
        <Route path="/picks"></Route>
        <Route path="/schedule"></Route>
      </Switch>
    </Layout>
  )
}

export default App;
