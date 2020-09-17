import React from "react"
import Header from "./Header"
import styled from 'styled-components'

const LayoutContainer = styled.div`
  margin-top: 0px;
`

const Layout = ({ children, currentUser, handleLogout }) => {
  return (
    <>
      <Header currentUser={currentUser} handleLogout={handleLogout} />
      <LayoutContainer>
        <main>{children}</main>
      </LayoutContainer>
    </>
  )
}

export default Layout
