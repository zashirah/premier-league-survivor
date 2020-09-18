import api from "./api-config"

export const getAllMatches = async () => {
  const response = await api.get("/matches")
  return response.data
}
