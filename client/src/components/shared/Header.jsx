import React from "react"
import styled from "styled-components"
import { Link } from "react-router-dom"

const Nav = styled.nav`
  box-sizing: border-box;
  width: 100%;
  max-width: 100vw;
  height: 75px;
  position: fixed;
  display: flex;
  top: 0;
  z-index: 1;
  padding: 0px 40px;
  justify-content: center;
  /* transition: all 0.5s ease-in; */
  background-color: var(--primary);
`

const NavLeft = styled.div`
  box-sizing: border-box;
  width: 35%;
  max-width: 35%;
  height: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
`
const NavRight = styled.div`
  box-sizing: border-box;
  width: 65%;
  max-width: 65%;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  align-items: center;
`

const NavItem = styled.li`
  box-sizing: border-box;
  margin: 0;
  list-style: none;
  z-index: 2;
  padding: 20px;
  a {
    height: 100%;
    font-weight: 800;
    text-decoration: none;
    text-transform: uppercase;
    color: var(--dark);
  }
`

const Header = ({ currentUser, handleLogout }) => {
  return (
    <Nav>
      <NavLeft>
        <NavItem>
          <Link to="/">EPL Survivor</Link>
        </NavItem>
      </NavLeft>
      <NavRight>
        {currentUser ? (
          <>
            <NavItem onClick={handleLogout}>
              <Link>Logout</Link>
            </NavItem>
          </>
        ) : (
          <>
            <NavItem onClick={handleLogout}>
              <Link to="/login">Login</Link>
            </NavItem>
          </>
        )}
        <NavItem>
          <Link to="/leagues">Leagues</Link>
        </NavItem>
        <NavItem>
          <Link to="/schedule">Schedule</Link>
        </NavItem>
        <NavItem>
          <Link to="/picks">Picks</Link>
        </NavItem>
      </NavRight>
    </Nav>
  )
}

export default Header
