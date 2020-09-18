import api from "./api-config"

export const getAllMatches = async () => {
  const response = await api.get("/matches")
  return response.data
}

export const getUserLeagueMatches = async (user_id, id) => {
  const response = await api.get(`/users/${user_id}/leagues/${id}/schedule`)
  return response.data
}