import React, { useState, useEffect } from 'react'
import { Route, Switch } from 'react-router-dom'

import Schedule from '../screens/schedule/Schedule'
import UserLeagueSchedule from "../screens/schedule/UserLeagueSchedule"
import { getAllMatches } from '../services/schedule'


const ScheduleContainer = () => {
  const [schedule, setSchedule] = useState([])

  useEffect(() => {
    const fetchSchedule = async () => {
      const schedule = await getAllMatches()
      setSchedule(schedule)
    }
    fetchSchedule()
  }, [])

  return (
    <Switch>
      <Route path="/schedule/users/:user_id/leagues/:id">
        <UserLeagueSchedule></UserLeagueSchedule>
      </Route>
      <Route path="/schedule">
        <Schedule schedule={schedule}></Schedule>
      </Route>
    </Switch>
  )
}

export default ScheduleContainer
