import React, { useState } from "react"
import styled from "styled-components"
import { Link } from "react-router-dom"
import HamburgerMenu from "../HamburgerMenu"

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
  @media screen and (max-width: 768px) {
    padding: 0px 10px;
    height: ${(props) => (props.navOpen ? "100vh" : "75px")};
  }
`

const NavLeft = styled.div`
  box-sizing: border-box;
  width: 35%;
  max-width: 35%;
  height: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
  @media screen and (max-width: 768px) {
    width: 60%;
    max-width: 60%;
    padding-top: 12px;
    padding-bottom: 12px;
    align-items: ${(props) => (props.navOpen ? "flex-start" : "center")};
    /* padding-top: ${(props) => (props.navOpen ? "25px" : "12px")}; */
  }
`
const NavRight = styled.div`
  box-sizing: border-box;
  margin: 0px;
  width: 65%;
  max-width: 65%;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  align-items: center;
  @media screen and (max-width: 768px) {
    width: 40%;
    max-width: 40%;
    padding: 12px;
    flex-direction: ${(props) => (props.navOpen ? "column" : "row")};
    align-items: ${(props) => (props.navOpen ? "flex-end" : "center")};
    /* padding-top: ${(props) => (props.navOpen ? "27px" : "12px")}; */
    justify-content: ${(props) => (props.navOpen ? "flex-start" : "flex-end")};
  }
`

const NavList = styled.ul`
  box-sizing: border-box;
  margin: 0px;
  /* width: 65%;
  max-width: 65%; */
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  align-items: center;
  @media screen and (max-width: 768px) {
    /* width: 50%;
    max-width: 50%; */
    padding: 12px;
    flex-direction: ${(props) => (props.navOpen ? "column" : "row")};
    align-items: ${(props) => (props.navOpen ? "flex-end" : "center")};
    /* padding-top: ${(props) => (props.navOpen ? "27px" : "12px")}; */
    justify-content: ${(props) => (props.navOpen ? "flex-start" : "flex-end")};
  }
`

const NavItem = styled.div`
  box-sizing: border-box;
  margin: 0;
  list-style: none;
  z-index: 2;
  padding: 20px;
  height: 100%;
  font-weight: 800;
  text-transform: uppercase;
  color: var(--dark);
  display: flex;
  flex-direction: row;
  align-items: center;
  @media screen and (max-width: 768px) {
    align-items: ${(props) => (props.navOpen ? "flex-start" : "center")};
    font-size: 25px;
  }
`

const NavListItem = styled.li`
  box-sizing: border-box;
  margin: 0;
  list-style: none;
  z-index: 2;
  padding: 20px;
  height: 100%;
  font-weight: 800;
  text-transform: uppercase;
  color: var(--dark);
  display: flex;
  flex-direction: row;
  align-items: center;
  @media screen and (max-width: 768px) {
    display: ${(props) => (props.navOpen ? "block" : "none")};
    padding: ${(props) => (props.navOpen ? "10px 0 10px 0" : "10px")};
    align-items: ${(props) => (props.navOpen ? "flex-start" : "center")};
    font-size: 25px;
  }
  @media screen and (max-width: 425px) {
    padding: 10px 0 10px 0;
  }
`

const StyledLink = styled(Link)`
  text-decoration: none;
`

const Header = ({ currentUser, handleLogout }) => {
  const [navOpen, setNavOpen] = useState(false)

  return (
    <Nav navOpen={navOpen}>
      <NavLeft navOpen={navOpen} mobileShow="mobileShow">
        <StyledLink to="/">
          <NavItem navOpen={navOpen} mobileShow="mobileShow">
            EPL Survivor
          </NavItem>
        </StyledLink>
      </NavLeft>
      <NavRight>
        <NavList navOpen={navOpen}>
          <HamburgerMenu setNavOpen={setNavOpen} navOpen={navOpen} />
          {currentUser ? (
            <StyledLink to="/login" onClick={() => setNavOpen(false)}>
              <NavListItem
                navOpen={navOpen}
                // mobileShow="mobileShow"
                onClick={handleLogout}
              >
                Logout
              </NavListItem>
            </StyledLink>
          ) : (
            <StyledLink to="/login" onClick={() => setNavOpen(false)}>
              <NavListItem
                navOpen={navOpen}
                // mobileShow="mobileShow"
              >
                Login
              </NavListItem>
            </StyledLink>
          )}
          <StyledLink to="/leagues" onClick={() => setNavOpen(false)}>
            <NavListItem navOpen={navOpen}>Leagues</NavListItem>
          </StyledLink>
          <StyledLink to="/schedule" onClick={() => setNavOpen(false)}>
            <NavListItem navOpen={navOpen}>Schedule</NavListItem>
          </StyledLink>

          <StyledLink to="/picks" onClick={() => setNavOpen(false)}>
            <NavListItem navOpen={navOpen}>Picks</NavListItem>
          </StyledLink>
        </NavList>
      </NavRight>
    </Nav>
  )
}

export default Header
