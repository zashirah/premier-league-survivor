import React, { useState, useEffect } from 'react'
import styled from "styled-components"
import MainButton from "../../components/MainButton"
import { useParams } from 'react-router-dom'

const LeagueEditContainer = styled.div`
  box-sizing: border-box;
  padding-top: 150px;
  display: flex;
  flex-direction: column;
  align-items: center;
`

const LeagueEditForm = styled.form`
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  box-shadow: 0px 1px 3px 0.5px var(--dark);
  border-radius: 15px;
  padding: 25px;
`

const LeagueEditHeader = styled.h3``

const LeagueEditRow = styled.div`
  width: 100%;
  padding: 10px 0px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
`

const LeagueEditInput = styled.input``

const LeagueEditLabel = styled.label``

const LeagueEdit = ({ leagues, currentUser, handleEdit }) => {
  const { id } = useParams()
  const [formData, setFormData] = useState({
    name: "",
    open_ind: null,
    user_id: "",
  })

  const { name, open_ind } = formData

  useEffect(() => {
    const prefillForm = () => {
      const singleLeague = leagues.find((league) => league.id === Number(id))
      setFormData(singleLeague)
    }
    leagues.length > 0 && prefillForm()
  }, [leagues])

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
    <LeagueEditContainer>
      <LeagueEditForm
        onSubmit={(e) => {
          e.preventDefault()
          handleEdit(id, formData)
        }}
      >
        <LeagueEditHeader>Edit League</LeagueEditHeader>
        <LeagueEditRow>
          <LeagueEditLabel htmlFor="name">Name:</LeagueEditLabel>
          <LeagueEditInput
            name="name"
            id="name"
            type="text"
            value={name}
            onChange={handleChange}
          />
        </LeagueEditRow>
        <LeagueEditRow>
          <LeagueEditLabel htmlFor="open_ind">Open:</LeagueEditLabel>
          <LeagueEditInput
            name="open_ind"
            id="open_ind"
            type="checkbox"
            value={open_ind}
            onClick={handleCheckboxClick}
          />
        </LeagueEditRow>
        <MainButton buttonText="Submit" />
      </LeagueEditForm>
    </LeagueEditContainer>
  )
}

export default LeagueEdit
