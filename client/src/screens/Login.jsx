import React, { useState } from "react"
import { Link } from "react-router-dom"
import styled from "styled-components"
import MainButton from "../components/MainButton"

const FormContainer = styled.div`
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
`

const StyledForm = styled.form`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  box-shadow: 0px 1px 3px 0.5px var(--dark);
  border-radius: 15px;
  padding: 25px;
`

const FormTitle = styled.h3``

const FormRow = styled.div`
  width: 100%;
  padding: 10px 0px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
`

const FormRowLabel = styled.label`
  padding: 2px;
`

const FormRowInput = styled.input``

const StyledLink = styled(Link)`
  text-decoration: none;
`

const Login = ({ loginSubmit }) => {
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  })

  const { username, password } = formData

  const handleChange = (e) => {
    const { name, value } = e.target

    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
    }))
  }

  return (
    <FormContainer>
      <StyledForm
        onSubmit={(e) => {
          e.preventDefault()
          loginSubmit(formData)
        }}
      >
        <FormTitle>Login:</FormTitle>
        <FormRow>
          <FormRowLabel htmlForm="username">Username:</FormRowLabel>
          <FormRowInput
            type="password"
            id="username"
            name="username"
            value={username}
            onChange={handleChange}
          ></FormRowInput>
        </FormRow>
        <FormRow>
          <FormRowLabel htmlForm="password">Password:</FormRowLabel>
          <FormRowInput
            type="text"
            id="password"
            name="password"
            value={password}
            onChange={handleChange}
          ></FormRowInput>
        </FormRow>
        <FormRow>
          <MainButton buttonText="Login" />
          <StyledLink to='/register'>
            <MainButton buttonText="Register" />
          </StyledLink>
        </FormRow>
      </StyledForm>
    </FormContainer>
  )
}

export default Login
