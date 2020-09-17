import React from "react"
import Header from "./Header"
import styled from 'styled-components'

const LayoutContainer = styled.div`
  margin-top: 0px;
`

const Layout = ({ children }) => {
  return (
    <>
      <Header />
      <LayoutContainer>
        <main>{children}</main>
      </LayoutContainer>
    </>
  )
}

export default Layout
