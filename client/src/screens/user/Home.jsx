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
`

const LeagueList = styled.ul`
  text-align: center;
  padding: 0;
`

const LeagueListItem = styled.li`
  list-style: none;

`

const Home = ({ currentUser, userLeagues }) => {
  console.log(userLeagues) 

  return (
    <HomeContainer>
      <StyledLink to="/leagues">
        <MainButton buttonText="Join League" />
      </StyledLink>
      <StyledLink to="/leagues/create">
        <MainButton buttonText="Create League" />
      </StyledLink>
      {userLeagues &&
        userLeagues.map((league) => (
          // console.log(league.name)
          <LeagueList>
            {" "}
            Your Leagues:
            <StyledLink to={`leagues/${league.id}`}>
              <LeagueListItem>{league.name}</LeagueListItem>
            </StyledLink>
          </LeagueList>
        ))}
    </HomeContainer>
  )
}

export default Home
