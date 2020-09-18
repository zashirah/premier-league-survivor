import React from "react"
import styled from "styled-components"

const MatchRow = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: space-between;
`

const MatchRowItem = styled.p`
  padding: 5px;
  font-weight: ${(props) => (props.bold ? "900" : "300")};
`

const MatchweekScheduleItem = ({ item, league }) => {
  console.log(league)
  return (
    <MatchRow key={item.id}>
      <MatchRowItem>Match Time: {item.match_datetime}</MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) > Number(item.away_goals) && true}
      >
        Home: {item.home_team}
      </MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) > Number(item.away_goals) && true}
      >
        Goals: {item.home_goals}
      </MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) < Number(item.away_goals) && true}
      >
        Away: {item.away_team}
      </MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) < Number(item.away_goals) && true}
      >
        Goals: {item.away_goals}
      </MatchRowItem>
      {league && (
        <>
          <MatchRowItem>
            Can Select Home?{item.home_allowed ? "Yes" : "No"}
          </MatchRowItem>
          <MatchRowItem>
            Can Select Away?{item.away_allowed ? "Yes" : "No"}
          </MatchRowItem>
          <MatchRowItem>
            Can Select Matchweek?{item.matchweek_allowed ? "Yes" : "No"}
          </MatchRowItem>
        </>
      )}
    </MatchRow>
  )
}

export default MatchweekScheduleItem
