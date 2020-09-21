import React from "react"
import styled from "styled-components"

import { circleKeyFrame } from "../styles/keyFrames.js"

import eplLogo from "../download.jpeg"

const FullPage = styled.div`
  width: 100vw;
  /* max-width: 1000px; */
  height: 100%;
  box-sizing: border-box;
  position: fixed;
  background-color: white;
  top: 75px;
`

const Logo = styled.img`
  height: 15vw;
  width: 15vw;
  top: 20vh;
  background-color: #ddd;
  border-radius: 100%;
  position: relative;
  object-fit: fill;
  animation: ${circleKeyFrame} 2s linear 1000 alternate;
`

const PageTitle = styled.h3`
  text-align: center;
  color: var(--dark);
`

const FullPageLoader = () => {
  return (
    <FullPage>
      <PageTitle>We are loading your picks!</PageTitle>
      <Logo src={eplLogo}></Logo>
    </FullPage>
  )
}

export default FullPageLoader
