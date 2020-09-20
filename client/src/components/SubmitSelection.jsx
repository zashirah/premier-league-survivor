import React from 'react'
import styled from 'styled-components'



const Circle = styled.div`
  height: 200px;
  width: 200px;
  background-color: var(--primary);
  border-radius: 100%;
  position: relative;
  /* display: ${(props) => (props.makingSelection ? "block" : "none")}; */
  display: block;
`

const SubmitSelection = ({ setMakingSelection, makingSelection }) => {
  return <Circle makingSelection={makingSelection}></Circle>
}

export default SubmitSelection
