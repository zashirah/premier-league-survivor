import api from "./api-config"

export const getAllLeagues = async () => {
  const response = await api.get("/leagues")
  return response.data
}

export const getLeague = async (id) => {
  const response = await api.get(`/leagues/${id}`)
  return response.data
}

export const deleteLeague = async (id) => {
  const response = await api.delete(`/leagues/${id}`)
  return response.data
}

export const postLeague = async (formData) => {
  const response = await api.post("/leagues", {league: formData})
  return response.data
}

export const putLeague = async (id, formData) => {
  const response = await api.put(`/leagues/${id}`, {league: formData})
  return response.data
}

export const putUserLeague = async (user_id, league_id) => {
  const response = await api.post(`/users/${user_id}/leagues/${league_id}`)
  return response.data
}

export const putUserLeagueSelection = async (user_id, league_id, match_id, team_id) => {
  const response = await api.post(
    `/users/${user_id}/leagues/${league_id}/matches/${match_id}/teams/${team_id}`, {
      pick: {
        user_id: user_id,
        league_id: league_id,
        match_id: match_id,
        team_id: team_id
    }}
  )
  console.log(response)
  return response.data
}