import React, { useEffect, useState } from "react"
import { useHistory, useParams } from "react-router-dom"
import styled from "styled-components"
import MatchweekScheduleItem from "../../components/MatchweekScheduleItem"
import ScheduleDropdown from "../../components/ScheduleDropdown"
import { getUserLeagueMatches } from "../../services/schedule"
import { putUserLeagueSelection } from "../../services/league"
import { deletePick } from "../../services/pick"
import SubmitSelection from "../../components/SubmitSelection"
import useFullPageLoader from "../../hooks/useFullPageLoader"

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
  const [reload, setReload] = useState(false)
  const [thisWeekSchedule, setThisWeekSchedule] = useState([])
  // const [makingSelection, setMakingSelection] = useState(false)

  useEffect(() => {
    showLoader()
    const fetchSchedule = async () => {
      const schedule = await getUserLeagueMatches(user_id, id)
      hideLoader()
      setUserLeagueSchedule(schedule)
    }
    fetchSchedule()
  }, [reload])

  useEffect(() => {
    const thisWeek = userLeagueSchedule.filter(
      (item) => item.matchweek === week
    )
    setThisWeekSchedule(thisWeek)
  }, [week])

  const [loader, showLoader, hideLoader] = useFullPageLoader()

  const handleSelection = async (userId, leagueId, matchId, teamId) => {
    const newSelection = await putUserLeagueSelection(
      userId,
      leagueId,
      matchId,
      teamId
    )
    
    setReload((prevState) => !prevState)
    
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

  const handleUnselect = async (id, leagueId, matchId) => {
    await deletePick(id)
    // console.log(userLeagueSchedule)
    setReload(prevState => !prevState)

    userLeagueSchedule.map((match) => {
      if (match.id === matchId) {
        // console.log(match)
        return {
          ...match,
          selected_id: "",
          home_selected_status: false,
          away_selected_status: false,
          matchweek_allowed: true,

        }
      } else if (match.matchweek === week) {
        return {
          ...match,
          matchweek_allowed: true,
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
      {userLeagueSchedule.length > 1 ? ScheduleJSX : <SubmitSelection />}
      {loader}
    </ScheduleContainer>
  )
}

export default UserLeagueSchedule
