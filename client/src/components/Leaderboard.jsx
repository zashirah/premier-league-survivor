import React from "react"
import { useParams } from "react-router-dom"
import styled from "styled-components"

const LeaderboardTable = styled.table`
  width: 100%;
  border-collapse: collapse;
  text-align: center;
  color: var(--dark);
`

const LeaderboardHeaders = styled.thead``

const LeaderboardRow = styled.tr``

const LeaderboardBody = styled.tbody``

const LeaderboardHeader = styled.th`
  border: 1px solid #999;
  padding: 0.5rem;
  color: var(--dark);
`

const LeaderboardData = styled.td`
  border: 1px solid #999;
  padding: 0.5rem;
  color: var(--dark);
`

const Leaderboard = ({ leagueUsers }) => {
  const { id } = useParams()
  const LeaderboardJSX = leagueUsers.map((user, index) => (
    <LeaderboardRow key={Number(user.id) + Number(id)}>
      <LeaderboardData >{index + 1}</LeaderboardData>
      <LeaderboardData >{user.username}</LeaderboardData>
      <LeaderboardData >{user.total_score}</LeaderboardData>
    </LeaderboardRow>
  ))

  return (
    <LeaderboardTable>
      <LeaderboardHeaders>
        <LeaderboardRow>
          <LeaderboardHeader>Place</LeaderboardHeader>
          <LeaderboardHeader>Username</LeaderboardHeader>
          <LeaderboardHeader>Score</LeaderboardHeader>
        </LeaderboardRow>
      </LeaderboardHeaders>
      <LeaderboardBody>{LeaderboardJSX}</LeaderboardBody>
    </LeaderboardTable>
  )
}

export default Leaderboard
