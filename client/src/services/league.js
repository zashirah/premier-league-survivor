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