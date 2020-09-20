import styled, { keyframes } from "styled-components"

export const circleKeyFrame = keyframes`
  0% {
    background-color: green;
    left: 10%;
    /* top: 10%; */
  }
  50% {
    background-color: purple;
    /* top: 50%; */
    
  }
  100% {
    background-color: red;
    left: 90%;
    /* top: 10%; */
  }
`
