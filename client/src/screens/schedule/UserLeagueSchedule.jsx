import React, { useEffect, useState } from "react"
import { useHistory, useParams } from "react-router-dom"
import styled from "styled-components"
import MatchweekScheduleItem from "../../components/MatchweekScheduleItem"
import ScheduleDropdown from "../../components/ScheduleDropdown"
import { getUserLeagueMatches } from "../../services/schedule"
import { putUserLeagueSelection } from "../../services/league"
import { deletePick } from "../../services/pick"
import SubmitSelection from "../../components/SubmitSelection"

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
  // const [makingSelection, setMakingSelection] = useState(false)

  useEffect(() => {
    const fetchSchedule = async () => {
      const schedule = await getUserLeagueMatches(user_id, id)
      setUserLeagueSchedule(schedule)
    }
    fetchSchedule()
  }, [userLeagueSchedule])

  useEffect(() => {
    const thisWeek = userLeagueSchedule.filter(
      (item) => item.matchweek === week
    )
    setThisWeekSchedule(thisWeek)
  }, [userLeagueSchedule, week])

  const handleSelection = async (userId, leagueId, matchId, teamId) => {
    const newSelection = await putUserLeagueSelection(
      userId,
      leagueId,
      matchId,
      teamId
    )
    userLeagueSchedule.map((match) => {
      if (match.id === matchId) {
        // console.log(match)
        return {
          ...match,
          selected_id: "",
          home_selected_status: false,
          away_selected_status: false,
        }
      } else {
        return match
      }
    })
  }

  const handleUnselect = async (id, leagueId, matchId, userId) => {
    await deletePick(id)
    // console.log(userLeagueSchedule)
    userLeagueSchedule.map((match) => {
      if (match.id === matchId) {
        // console.log(match)
        return {
          ...match,
          selected_id: "",
          home_selected_status: false,
          away_selected_status: false,
        }
      } else {
        return match
      }
    })
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
        // makingSelection={makingSelection}
        // setMakingSelection={setMakingSelection}
      />
    ))

  return (
    <ScheduleContainer>
      <ScheduleDropdown setWeek={setWeek} />
      {userLeagueSchedule.length > 1 ? (
        ScheduleJSX
      ) : (
        <SubmitSelection />
      )}
    </ScheduleContainer>
  )
}

export default UserLeagueSchedule
