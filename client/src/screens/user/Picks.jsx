import React from "react"
import styled from "styled-components"
import MatchweekScheduleItem from "../../components/MatchweekScheduleItem"

const ScheduleContainer = styled.div`
  padding-top: 100px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`
const Picks = ({ currentUser, userPicks }) => {
  const ScheduleJSX = userPicks.map((item) => (
    <MatchweekScheduleItem
      item={item}
      league="league"
      // handleSelection={handleSelection}
      currentUser={currentUser}
      // handleUnselect={handleUnselect}
    />
  ))

  return (
    <ScheduleContainer>
      <ScheduleDropdown setWeek={setWeek} />
    </ScheduleContainer>
  )
}

export default Picks
