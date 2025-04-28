import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <h1>Hello World!</h1>
        <h2>Welcome to dockerized react app.</h2>
        <p>This is a simple react app running in a docker container.</p>
      </div>
    </>
  )
}

export default App
