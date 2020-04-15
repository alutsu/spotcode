import React from 'react'
import { Button, Navbar, Container, Columns } from "react-bulma-components";
import logoImage from '../../../assets/images/logo.png'
import styled from 'styled-components'

const ColumnsFullWidth = styled(Columns)`
  width: 100%;
  padding-top: 20px;
  padding-left: 10px;
  padding-bottom: 10px;
`

const Menu = () => {
  return (
    <>
      <Navbar color='dark'>
        <Container>
          <ColumnsFullWidth className='is-mobile'>
            <Columns.Column desktop={{ size: 2 }} mobile={{ size: 5 }}>
              <img src={logoImage} className='image' />
            </Columns.Column>
            <Columns.Column>
              <a href='/users/sign_in' className='is-pulled-right is-right'>
                <Button outlined={true} color='white'>ENTRAR</Button>
              </a>
            </Columns.Column>
          </ColumnsFullWidth>
        </Container>
      </Navbar>
    </>
  )
}

export default Menu
