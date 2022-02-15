import React from "react"
import { BrowserRouter, Routes, Route} from "react-router-dom"

import Home from "./views/Home"
import Passagens from "./views/Passagens"
import Pacotes from "./views/Pacotes"
import Contato from "./views/Contato"
import Cadastro from "./views/Cadastro"

import Menu from "./componentes/Menu"
import Footer from "./componentes/Footer"


function App() {
  return (
    <BrowserRouter>
    <Menu />
    <Routes>
      <Route path="/img src=./img/logo.png" alt="img_logo" element={<Home />} />
      <Route path="/Home" element={<Home />} />
      <Route path="Passagens/" Passagens={<Passagens />} />
      <Route path="/Pacotes" pacotes={<Pacotes />} />
      <Route path="/Contato" Contato={<Contato />} />
      <Route path="/Cadastro" Cadastro={<Cadastro />} />     
    </Routes>
    <Footer />
    </BrowserRouter>
  );
}

export default App;