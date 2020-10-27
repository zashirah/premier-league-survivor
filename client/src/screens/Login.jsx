import React, { useState } from "react"
import { Link } from "react-router-dom"
import styled from "styled-components"
import MainButton from "../components/MainButton"
import useFullPageLoader from "../hooks/useFullPageLoader"

const FormContainer = styled.div`
  box-sizing: border-box;
  /* top: 85px; */
  padding-top: 85px;
  width: 100vw;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
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

const FormTitle = styled.h3`
  text-align: center;
`

const FormP = styled.p`
  text-align: center;
`

const FormRow = styled.div`
  width: 100%;
  padding: 10px 0px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
`

const RulesP = styled.p`
  width: 80vw;
  max-width: 500px;
`
const RulesList = styled.ul``
const RulesListItem = styled.li``

const FormRowLabel = styled.label`
  padding: 2px;
`

const FormRowInput = styled.input``

const StyledLink = styled(Link)`
  text-decoration: none;
`

const Login = ({ loginSubmit, currentUser }) => {
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  })

  const { username, password } = formData

  const [loader, showLoader, hideLoader] = useFullPageLoader()

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
          showLoader()
          loginSubmit(formData)
        }}
      >
        {currentUser ? (
          <>
            <FormTitle>Welcome, {currentUser.username}!</FormTitle>
            <FormP>You're logged in already</FormP>
          </>
        ) : (
          <>
            <FormTitle>Login:</FormTitle>
            <FormRow>
              <FormRowLabel htmlForm="username">Username:</FormRowLabel>
              <FormRowInput
                type="text"
                id="username"
                name="username"
                value={username}
                onChange={handleChange}
              ></FormRowInput>
            </FormRow>
            <FormRow>
              <FormRowLabel htmlForm="password">Password:</FormRowLabel>
              <FormRowInput
                type="password"
                id="password"
                name="password"
                value={password}
                onChange={handleChange}
              ></FormRowInput>
            </FormRow>
            <FormRow>
              <MainButton buttonText="Login" />
              <StyledLink to="/register">
                <MainButton buttonText="Register" />
              </StyledLink>
            </FormRow>
          </>
        )}
      </StyledForm>
      <RulesP>
        If you want to explore the site without creating a profile, you can use
        the following: username: user2; password: 123456.
      </RulesP>
      <RulesP>
        To get started, first create an account. Then you can join and create
        leagues. Within a league, you can make selections. The selections must
        follow the below rules.
      </RulesP>
      <RulesList>
        <RulesListItem>
          You can only make 1 selection each matchweek
        </RulesListItem>
        <RulesListItem>
          You can only select a team twice in a single season
        </RulesListItem>
        <RulesListItem>
          You cannot select a match after it has started
        </RulesListItem>
        <RulesListItem>
          You cannot unselect a match after it has started
        </RulesListItem>
      </RulesList>
      <RulesP>
        3 points if your team wins. 1 point with a tie. And 0 points with a
        loss.
      </RulesP>
      <RulesP>Good Luck!</RulesP>
      {loader}
    </FormContainer>
  )
}

export default Login
