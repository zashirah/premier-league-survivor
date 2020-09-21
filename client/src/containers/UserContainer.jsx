import React, { useState, useEffect } from 'react'
import { Route, Switch, useHistory } from 'react-router-dom'

import Home from "../screens/user/Home"
import Pick from "../screens/user/Pick"
import { getUser } from '../services/user'

const UserContainer = ({ currentUser }) => {
  const [userData, setUserData] = useState([])
  
  useEffect(() => {
    if (currentUser) {
      const fetchUserData = async () => {
        const userData = await getUser(currentUser.id)
        setUserData(userData)
      }
      fetchUserData()
    }
  }, [currentUser])


  return (
    <Switch>
      <Route path="/picks" currentUser={currentUser} userPicks={userData.picks}>
        <Pick />
      </Route>
      <Route path="/">
        <Home currentUser={currentUser} userLeagues={userData.leagues} />
      </Route>
    </Switch>
  )
}

export default UserContainer
