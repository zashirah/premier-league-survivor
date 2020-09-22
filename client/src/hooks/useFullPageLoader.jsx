// https://www.youtube.com/watch?v=zY5jOP5v-FY - video goes through using this custom hook

import React, { useState } from "react"
import FullPageLoader from '../components/FullPageLoader'


const useFullPageLoader = () => {
  const [loading, setLoading] = useState(false)
  return [
    loading ? <FullPageLoader /> : null,
    () => setLoading(true),
    () => setLoading(false),
  ]
}

export default useFullPageLoader
