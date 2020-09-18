import React, { useEffect, useState } from "react"
import { useParams } from "react-router-dom"
import styled from "styled-components"
import MatchweekScheduleItem from "../../components/MatchweekScheduleItem"
import ScheduleDropdown from "../../components/ScheduleDropdown"
import { getUserLeagueMatches } from "../../services/schedule"

const ScheduleContainer = styled.div`
  padding-top: 100px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`

const UserLeagueSchedule = () => {
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

  const ScheduleJSX = userLeagueSchedule
    .filter((item) => item.matchweek === week)
    .map((item) => <MatchweekScheduleItem item={item} />)

  return (
    <ScheduleContainer>
      <ScheduleDropdown setWeek={setWeek} />
      {ScheduleJSX}
    </ScheduleContainer>
  )
}

export default UserLeagueSchedule
