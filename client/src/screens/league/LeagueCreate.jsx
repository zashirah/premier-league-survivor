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

const LeagueCreateSelect = styled.select``

const LeagueCreateOption = styled.option``


const LeagueCreate = ({ currentUser, handleCreate }) => {
  const [formData, setFormData] = useState({
    name: "",
    status: "",
    user_id: currentUser.id
  })

  const { name, status } = formData

  const handleChange = (e) => {
    const { name, value } = e.target
    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
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
          <LeagueCreateLabel htmlFor="status">Status:</LeagueCreateLabel>
          {/* <LeagueCreateInput
            name="status"
            id="status"
            type="text"
            value={open_ind}
            onClick={handleChange}
          /> */}
          <LeagueCreateSelect onChange={handleChange} name="status">
            <LeagueCreateOption disabled selected>
              Select the Status
            </LeagueCreateOption>
            <LeagueCreateOption value={"open"}>
              Open
            </LeagueCreateOption>
            <LeagueCreateOption value={"closed"}>
              Closed
            </LeagueCreateOption>
          </LeagueCreateSelect>
        </LeagueCreateRow>
        <MainButton buttonText="Submit" />
      </LeagueCreateForm>
    </LeagueCreateContainer>
  )
}

export default LeagueCreate
