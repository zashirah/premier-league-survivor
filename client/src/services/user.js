import api from "./api-config"

export const getUser = async (id) => {
  const response = await api.get(`/users/${id}`)
  return response.data
}