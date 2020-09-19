import React from "react"
import { useParams } from "react-router-dom"
import styled from "styled-components"
import { deletePick } from "../services/pick"
import MainButton from "./MainButton"

// const MatchRow = styled.div`
//   display: flex;
//   flex-direction: row;
//   justify-content: space-between;
//   align-items: center;
//   border: solid var(--dark) 2px;
//   margin: 10px;
//   padding: 5px;
// `

const MatchRow = styled.div`
  display: grid;
  grid: ${(props) => (props.league ? "50px / 100px 200px 50px 200px 50px 200px 100px" : "50px / 200px 50px 200px 50px 200px")};
  border: solid var(--dark) 2px;
  margin: 10px;
  padding: 5px;
`

const MatchRowItem = styled.p`
  padding: 5px;
  margin: 0px auto;
  font-weight: ${(props) => (props.bold ? "900" : "300")};
  /* text-align: center; */
  display: flex;
  align-items: center;
`

const MatchweekScheduleItem = ({
  item,
  league,
  handleSelection,
  currentUser,
  handleUnselect,
}) => {
  const { user_id, id } = useParams()
  // console.log(league)

  return (
    <MatchRow key={item.id} league={league}>
      {league && (
        <>
          {item.home_allowed &&
            item.matchweek_allowed &&
            item.match_status_allowed &&
            !item.home_selected_status && (
              <MainButton
                buttonText="Select Home Team"
                backgroundColor="#3587A4"
                onClick={() =>
                  handleSelection(
                    currentUser.id,
                    Number(id),
                    item.id,
                    item.home_team_id
                  )
                }
              />
            )}
          {item.match_status_allowed && item.home_selected_status && (
            <MainButton
              buttonText="Unselect"
              backgroundColor="#EA3449"
              onClick={() => handleUnselect(item.selected_id, Number(id))}
            />
          )}
          {(!item.home_allowed ||
            !item.matchweek_allowed ||
            !item.match_status_allowed) &&
            !item.home_selected_status && (
              <MainButton buttonText="Can't Select" backgroundColor="#E0E0E0" />
            )}
        </>
      )}
      <MatchRowItem
        bold={Number(item.home_goals) > Number(item.away_goals) && true}
      >
        {item.home_team}
      </MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) > Number(item.away_goals) && true}
      >
        {item.home_goals}
      </MatchRowItem>
      <MatchRowItem>Match Time: {item.match_datetime}</MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) < Number(item.away_goals) && true}
      >
        {item.away_goals}
      </MatchRowItem>
      <MatchRowItem
        bold={Number(item.home_goals) < Number(item.away_goals) && true}
      >
        {item.away_team}
      </MatchRowItem>
      {league && (
        <>
          {item.away_allowed &&
            item.matchweek_allowed &&
            item.match_status_allowed &&
            !item.away_selected_status && (
              <MainButton
                buttonText="Select Away Team"
                backgroundColor="#3587A4"
                onClick={() =>
                  handleSelection(
                    currentUser.id,
                    Number(id),
                    item.id,
                    item.away_team_id
                  )
                }
              />
            )}
          {item.match_status_allowed && item.away_selected_status && (
            <MainButton
              buttonText="Unselect"
              backgroundColor="#EA3449"
              onClick={() => handleUnselect(item.selected_id, Number(id))}
            />
          )}
          {(!item.away_allowed ||
            !item.matchweek_allowed ||
            !item.match_status_allowed) &&
            !item.away_selected_status && (
              <MainButton buttonText="Can't Select" backgroundColor="#E0E0E0" />
            )}
        </>
      )}
    </MatchRow>
  )
}

export default MatchweekScheduleItem
