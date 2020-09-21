import React, { useState, useEffect } from 'react'
import { Route, Switch } from 'react-router-dom'

import Schedule from '../screens/schedule/Schedule'
import UserLeagueSchedule from "../screens/schedule/UserLeagueSchedule"
import { getAllMatches } from '../services/schedule'
import useFullPageLoader from "../hooks/useFullPageLoader"


const ScheduleContainer = ({ currentUser }) => {
  const [schedule, setSchedule] = useState([])

  useEffect(() => {
    showLoader()
    const fetchSchedule = async () => {
      const schedule = await getAllMatches()
      hideLoader()
      setSchedule(schedule)
    }
    fetchSchedule()
  }, [])

  const [loader, showLoader, hideLoader] = useFullPageLoader()

  return (
    <Switch>
      <Route path="/schedule/users/:user_id/leagues/:id">
        <UserLeagueSchedule currentUser={currentUser}></UserLeagueSchedule>
      </Route>
      <Route path="/schedule">
        <Schedule schedule={schedule} loader={loader}></Schedule>
      </Route>
    </Switch>
  )
}

export default ScheduleContainer
