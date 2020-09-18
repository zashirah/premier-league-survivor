import React, { useState } from "react"
import styled from "styled-components"

const ScheduleSelect = styled.select``

const ScheduleOption = styled.option``

const ScheduleDropdown = ({ setWeek }) => {
  const matchdayArray = [...Array(38).keys()]

  const handleChange = (e) => {
    setWeek(Number(e.target.value))
  }

  const ScheduleOptionsJSX = matchdayArray.map((matchdayItem) => {
    console.log(matchdayItem)

    return (
      <ScheduleOption
        key={matchdayItem}
        value={matchdayItem + 1}
        onClick={() => {
          setWeek(matchdayItem + 1)
        }}
      >
        Matchweek {matchdayItem + 1}
      </ScheduleOption>
    )
  })

  return <ScheduleSelect onChange={handleChange}>{ScheduleOptionsJSX}</ScheduleSelect>
}

export default ScheduleDropdown
