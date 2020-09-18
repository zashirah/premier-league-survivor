import React, { useEffect, useState } from 'react'
import styled from 'styled-components'
import ScheduleDropdown from '../../components/ScheduleDropdown'

const ScheduleContainer = styled.div`
  padding-top: 100px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;  
`

const MatchRow = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
`

const MatchRowItem = styled.p`
  padding: 5px;
`



const Schedule = ({ schedule }) => {
  const [week, setWeek] = useState(1)
  const [thisWeekSchedule, setThisWeekSchedule] = useState([])

  useEffect(() => {
    const thisWeek = schedule.filter((item) => item.matchweek === week)
    setThisWeekSchedule(thisWeek)
  }, [schedule, week])

  
  const ScheduleJSX = schedule
    .filter((item) => item.matchweek === week)
    .map((item) => (
      <MatchRow key={item.id}>
        <MatchRowItem>Match Time: {item.match_datetime}</MatchRowItem>
        <MatchRowItem>Home: {item.home_team_id}</MatchRowItem>
        <MatchRowItem>Goals: {item.home_goals}</MatchRowItem>
        <MatchRowItem>Away: {item.away_team_id}</MatchRowItem>
        <MatchRowItem>Goals: {item.away_goals}</MatchRowItem>
      </MatchRow>
    ))


  return (
    <ScheduleContainer>
      <ScheduleDropdown setWeek={setWeek}/>
      {ScheduleJSX}
    </ScheduleContainer>
  )
}

export default Schedule
