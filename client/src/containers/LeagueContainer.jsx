import React, { useState, useEffect } from "react"
import { Switch, Route, useHistory } from "react-router-dom"

import LeagueCreate from "../screens/league/LeagueCreate"
import LeagueEdit from "../screens/league/LeagueEdit"
import Leagues from "../screens/league/Leagues"
import League from "../screens/league/League"
import { getAllLeagues, deleteLeague, postLeague, putLeague } from "../services/league"

const LeagueContainer = ({ currentUser }) => {
  const history = useHistory()
  const [leagues, setLeagues] = useState([])

  useEffect(() => {
    const fetchLeagues = async () => {
      const leagues = await getAllLeagues()
      setLeagues(leagues)
    }
    fetchLeagues()
  }, [])

  const handleDelete = async (id) => {
    await deleteLeague(id)
    setLeagues((prevState) => prevState.filter((league) => league.id !== id))
    history.push(`/leagues`)
  }

  const handleCreate = async (formData) => {
    const newLeague = await postLeague(formData)
    setLeagues(prevState => [...prevState, newLeague])
    history.push(`/leagues/${newLeague.id}`)
  }

  const handleEdit = async (id, formData) => {
    const updatedLeague = await putLeague(id, formData)
    setLeagues(prevState => (
      prevState.map(league =>  league.id === Number(id) ? updatedLeague : league)
    ))
    history.push(`/leagues/${id}`)
  }

  return (
    <Switch>
      <Route path="/leagues/create">
        {currentUser && (
          <LeagueCreate currentUser={currentUser} handleCreate={handleCreate} />
        )}
      </Route>
      <Route path="/leagues/:id/edit">
        <LeagueEdit
          currentUser={currentUser}
          leagues={leagues}
          handleEdit={handleEdit}
        />
      </Route>
      <Route path="/leagues/:id">
        <League currentUser={currentUser} handleDelete={handleDelete} />
      </Route>
      <Route path="/leagues">
        <Leagues currentUser={currentUser} leagues={leagues} />
      </Route>
    </Switch>
  )
}

export default LeagueContainer
