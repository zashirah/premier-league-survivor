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

const LeagueRow = styled.div`
  width: 50vw;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
`

const LeagueRowP = styled.p`
  margin: 0px;
`

const StyledLink = styled(Link)`
  text-decoration: none;
`


const Leagues = ({ leagues, currentUser }) => {
  const LeaguesJSX = leagues.filter(league => league.status === 'open').map((league) => (
    <LeagueRow key={league.id}>
      <LeagueRowP>Name: {league.name}</LeagueRowP>
      <LeagueRowP>Members: {league.member_count}</LeagueRowP>
      <StyledLink to={`/leagues/${league.id}`}>
        <MainButton buttonText="VISIT" />
      </StyledLink>
    </LeagueRow>
  ))

  return (
    <LeaguesContainer>
      <LeagueTitle>Leagues:</LeagueTitle>
      {LeaguesJSX}
    </LeaguesContainer>
  )}

export default Leagues
