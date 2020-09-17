import React, { useState } from "react"
import styled from "styled-components"
import MainButton from "../../components/MainButton"

const LeagueCreateContainer = styled.div`
  box-sizing: border-box;
  padding-top: 150px;
  display: flex;
  flex-direction: column;
  align-items: center;
`

const LeagueCreateForm = styled.form`
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  box-shadow: 0px 1px 3px 0.5px var(--dark);
  border-radius: 15px;
  padding: 25px;
`

const LeagueCreateHeader = styled.h3``

const LeagueCreateRow = styled.div`
  width: 100%;
  padding: 10px 0px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
`

const LeagueCreateInput = styled.input``

const LeagueCreateLabel = styled.label``

const LeagueCreate = ({ currentUser, handleCreate }) => {
  const [formData, setFormData] = useState({
    name: "",
    open_ind: false,
    user_id: currentUser.id
  })

  const { name, open_ind } = formData

  const handleChange = (e) => {
    const { name, value } = e.target
    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
    }))
  }

  const handleCheckboxClick = () => {
    setFormData((prevState) => ({
      ...prevState,
      open_ind: !prevState.open_ind,
    }))
  }

  return (
    <LeagueCreateContainer>
      <LeagueCreateForm
        onSubmit={(e) => {
          e.preventDefault()
          handleCreate(formData)
        }}
      >
        <LeagueCreateHeader>Create League</LeagueCreateHeader>
        <LeagueCreateRow>
          <LeagueCreateLabel htmlFor="name">Name:</LeagueCreateLabel>
          <LeagueCreateInput
            name="name"
            id="name"
            type="text"
            value={name}
            onChange={handleChange}
          />
        </LeagueCreateRow>
        <LeagueCreateRow>
          <LeagueCreateLabel htmlFor="open_ind">Open:</LeagueCreateLabel>
          <LeagueCreateInput
            name="open_ind"
            id="open_ind"
            type="checkbox"
            value={open_ind}
            onClick={handleCheckboxClick}
          />
        </LeagueCreateRow>
        <MainButton buttonText="Submit" />
      </LeagueCreateForm>
    </LeagueCreateContainer>
  )
}

export default LeagueCreate
