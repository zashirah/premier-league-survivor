import React, { useState, useEffect } from "react"
import styled from "styled-components"
import MatchweekScheduleItem from "../../components/MatchweekScheduleItem"
import { mergeSort } from "../../utils/sortUserPicks"
import { deletePick } from "../../services/pick"

const ScheduleContainer = styled.div`
  padding-top: 100px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`

const PickTitle = styled.h3``

const Picks = ({ currentUser, userPicks, userLeagues }) => {  
  const [reload, setReload] = useState(false)
  const handleUnselect = async (id, leagueId, matchId) => {
   await deletePick(id)
   setReload((prevState) => !prevState)

  //  userLeagueSchedule.map((match) => {
  //    if (match.id === matchId) {
  //      return {
  //        ...match,
  //        selected_id: "",
  //        home_selected_status: false,
  //        away_selected_status: false,
  //        matchweek_allowed: true,
  //      }
  //    } else if (match.matchweek === week) {
  //      return {
  //        ...match,
  //        matchweek_allowed: true,
  //      }
  //    } else {
  //      return match
  //    }
  //  })
 }
 
  return (
    <ScheduleContainer>
      {userPicks &&
        mergeSort(userPicks).map((pick) => (
          <>
            <PickTitle>
              {pick.league_name} - matchweek: {pick.matchweek}
            </PickTitle>
            <MatchweekScheduleItem
              item={pick}
              league="league"
              currentUser={currentUser}
              handleUnselect={handleUnselect}
            />
          </>
        ))}
    </ScheduleContainer>
  )
}

export default Picks
