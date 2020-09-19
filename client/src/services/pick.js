import api from "./api-config"

export const deletePick = async (id) => {
  const response = await api.delete(`/picks/${id}`)
  return response.data
}
