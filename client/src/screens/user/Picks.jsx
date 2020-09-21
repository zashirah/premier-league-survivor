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

const TableViewCheckboxLabel = styled.label``
const TableViewCheckbox = styled.input``

const PickTitle = styled.h3``

const Picks = ({ currentUser, userPicks, userLeagues, setUserData }) => {
  const [reload, setReload] = useState(false)
  const [tableView, setTableView] = useState(false)

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
      {/* <TableViewCheckboxLabel>
        Table View
        <TableViewCheckbox type="checkbox" value={tableView} onChange={e => setTableView(e.target.checked)}/>
      </TableViewCheckboxLabel> */}
      {userPicks && 
        !tableView &&
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
