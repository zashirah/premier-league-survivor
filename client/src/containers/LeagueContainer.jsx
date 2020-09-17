import React, { useState, useEffect } from "react"
import { Switch, Route } from "react-router-dom"

import LeagueCreate from "../screens/league/LeagueCreate"
import LeagueEdit from "../screens/league/LeagueEdit"
import Leagues from "../screens/league/Leagues"
import League from "../screens/league/League"
import { getAllLeagues } from "../services/league"

const LeagueContainer = ({ currentUser }) => {
  const [leagues, setLeagues] = useState([])

  useEffect(() => {
    const fetchLeagues = async () => {
      const leagues = await getAllLeagues()
      setLeagues(leagues)
    }
    fetchLeagues()
  }, [])

  return (
    <Switch>
      <Route path="/leagues/create">
        <LeagueCreate currentUser={currentUser} leagues={leagues} />
      </Route>
      <Route path="/leagues/:id/edit">
        <LeagueEdit currentUser={currentUser} leagues={leagues} />
      </Route>
      <Route path="/leagues/:id">
        <League currentUser={currentUser} leagues={leagues} />
      </Route>
      <Route path="/leagues">
        <Leagues currentUser={currentUser} leagues={leagues} />
      </Route>
    </Switch>
  )
}

export default LeagueContainer
