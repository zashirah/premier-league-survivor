import React, { useState, useEffect } from 'react';
import Layout from './components/shared/Layout';
import { Switch, Route, useHistory } from 'react-router-dom';

import Login from './screens/Login'
import { loginUser, registerUser, verifyUser, removeToken } from "./services/auth"
import Register from './screens/Register';
import UserContainer from "./containers/UserContainer"
import LeagueContainer from "./containers/LeagueContainer"
import ScheduleContainer from "./containers/ScheduleContainer"

function App() {
  const history = useHistory()
  const [currentUser, setCurrentUser] = useState(null)

  useEffect(() => {
    const handleVerify = async () => {
      const userData = await verifyUser()
      setCurrentUser(userData)
    }
    handleVerify()
    // history.push('/')
  }, [])

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

  const handleLogout = () => {
    localStorage.removeItem("authToken")
    removeToken()
    setCurrentUser(null)
    history.push("/login")
  }

  return (
    <Layout currentUser={currentUser} handleLogout={handleLogout}>
      <Switch>
        <Route path="/login">
          <Login loginSubmit={loginSubmit} />
        </Route>
        <Route path="/register">
          <Register registerSubmit={registerSubmit} />
        </Route>
        <Route path="/leagues">
          <LeagueContainer currentUser={currentUser} />
        </Route>
        {/* <Route path="/picks"></Route> */}
        <Route path="/schedule">
          <ScheduleContainer />
        </Route>
        <Route path="/">
          <UserContainer currentUser={currentUser} />
        </Route>
      </Switch>
    </Layout>
  )
}

export default App;
