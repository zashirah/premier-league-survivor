import React, { useEffect, useState } from "react"
import { useHistory, useParams } from "react-router-dom"
import styled from "styled-components"
import MatchweekScheduleItem from "../../components/MatchweekScheduleItem"
import ScheduleDropdown from "../../components/ScheduleDropdown"
import { getUserLeagueMatches } from "../../services/schedule"
import { putUserLeagueSelection } from "../../services/league"
import { deletePick } from "../../services/pick"

const ScheduleContainer = styled.div`
  padding-top: 100px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`

const UserLeagueSchedule = ({ currentUser }) => {
  const history = useHistory()
  const { user_id, id } = useParams()
  const [userLeagueSchedule, setUserLeagueSchedule] = useState([])
  const [week, setWeek] = useState(1)
  const [thisWeekSchedule, setThisWeekSchedule] = useState([])

  useEffect(() => {
    const fetchSchedule = async () => {
      const schedule = await getUserLeagueMatches(user_id, id)
      setUserLeagueSchedule(schedule)
    }
    fetchSchedule()
  }, [])

  useEffect(() => {
    const thisWeek = userLeagueSchedule.filter(
      (item) => item.matchweek === week
    )
    setThisWeekSchedule(thisWeek)
  }, [userLeagueSchedule, week])

  const handleSelection = async (user_id, league_id, match_id, team_id) => {
    const newSelection = await putUserLeagueSelection(
      user_id,
      league_id,
      match_id,
      team_id
    )
    // setUserLeagueSchedule(newSelection)
    // history.push(`/leagues/${league_id}`)
  }


  const handleUnselect = async (id, league_id) => {
    await deletePick(id)
    history.push(`/leagues/${league_id}`)
  }

  const ScheduleJSX = userLeagueSchedule
    .filter((item) => item.matchweek === week)
    .map((item) => (
      <MatchweekScheduleItem
        item={item}
        league="league"
        handleSelection={handleSelection}
        currentUser={currentUser}
        handleUnselect={handleUnselect}
      />
    ))

  return (
    <ScheduleContainer>
      <ScheduleDropdown setWeek={setWeek} />
      {ScheduleJSX}
    </ScheduleContainer>
  )
}

export default UserLeagueSchedule
