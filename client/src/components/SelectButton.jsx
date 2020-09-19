import React from 'react'

const StyledButton = styled.button`
  /* background-color: var(--primary-button); */
  background-color: ${props => props.backgroundColor || "red"};
  color: var(--dark);
  border: none;
  border-radius: 5px;
  padding: 5px 15px;
  font-weight: 700;
  box-shadow: 0px 1px 3px 0.5px var(--dark);
`

const SelectButton = ({ onClick, buttonText }) => {
  return <StyledButton onClick={onClick}>{buttonText}</StyledButton>
}

export default SelectButton
