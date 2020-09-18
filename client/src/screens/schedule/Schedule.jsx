import React, { useEffect, useState } from 'react'
import styled from 'styled-components'
import MatchweekScheduleItem from '../../components/MatchweekScheduleItem'
import ScheduleDropdown from '../../components/ScheduleDropdown'

const ScheduleContainer = styled.div`
  padding-top: 100px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;  
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
      <MatchweekScheduleItem item={item}/>
    ))


  return (
    <ScheduleContainer>
      <ScheduleDropdown setWeek={setWeek}/>
      {ScheduleJSX}
    </ScheduleContainer>
  )
}

export default Schedule
