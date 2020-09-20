import React from "react"
import styled from "styled-components"

const FullPage = styled.div`
  position: fixed;
  height: 100%;
  width: 100%;
  top: 75px;
  left: 0px;
  background-color: black;
`

const FullPageLoader = () => {
  return (
    <FullPage>
      <iframe
        src="https://giphy.com/embed/3o7bu3XilJ5BOiSGic"
        width="480"
        height="480"
        frameBorder="0"
        class="giphy-embed"
        allowFullScreen
      ></iframe>
    </FullPage>
  )
}

export default FullPageLoader
