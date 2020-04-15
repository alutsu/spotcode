import React from 'react'
import 'react-bulma-components/dist/react-bulma-components.min.css';
import { BrowserRouter } from "react-router-dom";

import Routes from './routes'

import Menu from './components/common/menu'

import './app.scss'

const App = () => {
  return (
    <>
      <BrowserRouter>
        <Menu />
        <Routes />
      </BrowserRouter>
    </>
  )
}

export default App
