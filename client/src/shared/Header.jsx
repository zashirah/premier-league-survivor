import React from 'react'
import styled from "styled-components"
import { Link } from "react-router-dom"

const Nav = styled.nav`
  width: 100%;
  max-width: 100vw;
  height: 75px;
  position: fixed;
  display: flex;
  top: 0;
  z-index: 1;
  padding: 0px 40px;
  justify-content: center;
  transition: all 0.5s ease-in;
  background-color: var(--primary);
`

const NavLeft = styled.div`
  width: 50%;
  max-width: 50%;
  height: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
`
const NavRight = styled.div`
  width: 50%;
  max-width: 50%;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
`

const NavItem = styled.li`
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

const Header = () => {
  return (
    <Nav>
      <NavLeft>
        <NavItem>
          <Link to="/">EPL Survivor</Link>
        </NavItem>
      </NavLeft>
      <NavRight>
        <NavItem>
          <Link to="/leagues">Leagues</Link>
        </NavItem>
        <NavItem>
          <Link to="/scheduls">Schedule</Link>
        </NavItem>
        <NavItem>
          <Link to="/picks">Picks</Link>
        </NavItem>
      </NavRight>
    </Nav>
  )
}

export default Header
