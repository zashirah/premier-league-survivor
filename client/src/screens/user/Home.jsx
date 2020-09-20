import React from "react"
import { Link } from "react-router-dom"
import styled from "styled-components"
import MainButton from "../../components/MainButton"

const HomeContainer = styled.div`
  height: 100vh;
  width: 100vw;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`

const StyledLink = styled(Link)`
  text-decoration: none;
  padding: 10px;
`

const LeagueList = styled.ul`
  text-align: center;
  padding: 0;
  margin: 0;
`

const LeagueListItem = styled.li`
  list-style: none;
  padding: 0;
  margin: 0;
`

const HomeTitle = styled.h3``

const Home = ({ currentUser, userLeagues }) => {
  return (
    <HomeContainer>
      <StyledLink to="/leagues">
        <MainButton buttonText="Join League" />
      </StyledLink>
      <StyledLink to="/leagues/create">
        <MainButton buttonText="Create League" />
      </StyledLink>
      <HomeTitle>Your Leagues:</HomeTitle>
      {userLeagues &&
        userLeagues.map((league) => (
          <LeagueList>
            <StyledLink to={`leagues/${league.id}`}>
              <LeagueListItem>{league.name}</LeagueListItem>
            </StyledLink>
          </LeagueList>
        ))}
    </HomeContainer>
  )
}

export default Home
