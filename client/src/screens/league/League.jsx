import React, { useState, useEffect } from "react"
import { useParams, Link } from "react-router-dom"
import styled from "styled-components"

import { getLeague } from "../../services/league"
import MainButton from "../../components/MainButton"
import Leaderboard from "../../components/Leaderboard"

const LeagueContainer = styled.div`
  box-sizing: border-box;
  width: 100%;
  max-width: 100vw;
  height: 100%;
  padding-top: 100px;
  display: flex;
  flex-direction: row;
  box-sizing: border-box;
`

const LeagueSection = styled.div`
  box-sizing: border-box;
  width: 50%;
  height: 100%;
  padding: 25px;
  margin: 25px;
  border-radius: 25px;
  box-shadow: 0px 1px 5px 1px var(--dark);
  display: flex;
  flex-direction: column;
  align-items: center;
`

const LeftSide = styled(LeagueSection)``

const SectionTitle = styled.h3`
  color: var(--dark);
`
const SectionStatus = styled.h5`
  color: var(--dark);
`

const AdminButtons = styled.div``

const RightSide = styled(LeagueSection)``

const StyledLink = styled(Link)`
  text-decoration: none;
`

const League = ({ currentUser, handleDelete, handleJoinLeague }) => {
  const [league, setLeague] = useState(null)
  const { id } = useParams()

  useEffect(() => {
    const fetchLeague = async () => {
      const league = await getLeague(id)
      setLeague(league)
    }
    fetchLeague()
  }, [])

  return (
    <>
      {league && (
        <LeagueContainer>
          <LeftSide>
            <SectionTitle>League Name: {league.name}</SectionTitle>
            <SectionStatus>Status: {league.status}</SectionStatus>
            {currentUser &&
              !league.users.find((user) => user.id === currentUser.id) &&
              league.status === "open" && (
                <MainButton
                  onClick={() => handleJoinLeague(currentUser.id, id)}
                  buttonText="Join"
                />
              )}
            {currentUser && (
              <StyledLink
                to={`/schedule/users/${currentUser.id}/leagues/${id}`}
              >
                <MainButton buttonText="Selections" />
              </StyledLink>
            )}
            {currentUser && currentUser.id === league.manager_id && (
              <AdminButtons>
                <StyledLink to={`/leagues/${league.id}/edit`}>
                  <MainButton buttonText="Edit" />
                </StyledLink>
                <MainButton
                  buttonText="Delete"
                  onClick={() => handleDelete(league.id)}
                />
              </AdminButtons>
            )}
          </LeftSide>
          <RightSide>
            <SectionTitle>Leaderboard</SectionTitle>
            <Leaderboard leagueUsers={league.users} />
          </RightSide>
        </LeagueContainer>
      )}
    </>
  )
}

export default League
