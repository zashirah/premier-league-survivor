import api from "./api-config"

export const getAllLeagues = async () => {
  const response = await api.get("/leagues")
  return response.data
}