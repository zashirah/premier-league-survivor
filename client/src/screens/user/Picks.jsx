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

const Picks = ({ currentUser, userPicks, userLeagues, setUserData }) => {
  const [reload, setReload] = useState(false)
  // const [picks, setPicks] = useState([])

  // useEffect(() => {
  //   setPicks(userPicks)
  // }, [reload, userPicks])

  const handleUnselect = async (id, leagueId, matchId) => {
    await deletePick(id)
    setReload((prevState) => !prevState)
    setUserData((prevState) => ({
      ...prevState,
      picks: userPicks.filter((pick) => pick.id !== id),
    }))
    // setPicks(userPicks.filter((pick) => pick.id !== id))
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
