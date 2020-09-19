import React from 'react'
import { Link } from 'react-router-dom'

import styled from 'styled-components'
import MainButton from '../../components/MainButton'

const LeaguesContainer = styled.div`
  padding-top: 100px;
  width: 100vw;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`

const LeagueTitle = styled.h3`

`

// const LeagueRow = styled.div`
//   width: 50vw;
//   display: flex;
//   justify-content: space-evenly;
//   align-items: center;
// `

const LeagueRow = styled.div`
  /* width: 50vw; */
  display: grid;
  grid-template-columns: 200px 100px 100px;
  justify-content: space-evenly;
  align-items: center;
  border: solid var(--dark) 2px;
  margin: 10px;
  padding: 5px;
`


const LeagueRowP = styled.p`
  padding: 10px;
  text-align: center;
  margin: 0 auto;
  font-weight: ${(props) => (props.strong ? "800" : "300")};
`

const StyledLink = styled(Link)`
  text-decoration: none;
  margin: 0 auto;
`


const Leagues = ({ leagues, currentUser }) => {
  const LeaguesJSX = leagues
    .filter((league) => league.status === "open")
    .map((league) => (
      <LeagueRow key={league.id}>
        <LeagueRowP>{league.name}</LeagueRowP>
        <LeagueRowP>{league.member_count}</LeagueRowP>
        <StyledLink to={`/leagues/${league.id}`}>
          <MainButton buttonText="VISIT"  />
        </StyledLink>
      </LeagueRow>
    ))

  return (
    <LeaguesContainer>
      <LeagueTitle strong="strong">Leagues:</LeagueTitle>
      <LeagueRow>
        <LeagueRowP strong="strong">League Name:</LeagueRowP>
        <LeagueRowP strong="strong">Members:</LeagueRowP>
      </LeagueRow>
      {LeaguesJSX}
    </LeaguesContainer>
  )}

export default Leagues
