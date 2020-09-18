import React from 'react'
import styled from "styled-components"

const StyledButton = styled.button`
  background-color: var(--primary-button);
  color: var(--dark);
  border: none;
  border-radius: 5px;
  padding: 5px 15px;
  font-weight: 700;
  box-shadow: 0px 1px 3px 0.5px var(--dark);
`

const SecondaryButton = () => {
  return <StyledButton onClick={onClick}>{buttonText}</StyledButton>
}

export default SecondaryButton
