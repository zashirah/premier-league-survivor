import React from "react"
import styled from "styled-components"

const ScheduleSelect = styled.select``

const ScheduleOption = styled.select``

const ScheduleDropdown = () => {
  const matchdayArray = [...Array(37).keys()]

  const ScheduleOptionsJSX = matchdayArray.map((matchdayItem) => (
    <ScheduleOption>{matchdayItem + 1}</ScheduleOption>
  ))
  

  return <ScheduleSelect>{ScheduleOptionsJSX}</ScheduleSelect>}

export default ScheduleDropdown
