import React from "react"
import { Link } from "react-router-dom";

function Menu() {
    return (
        <div className="container">
            <div className="header-logo">
                <Link to="/Home"><img src="./img/logo.png" alt="img_logo"/></Link>
            </div>
            <div className="header-nav-menu">
                <ul className="nav justify-content-center">
                    <li className="nav-item">
                        <Link className="nav-link" href="/Home">Home</Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" href="/Passagens">Passagens</Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" href="/Pacotes">Pacotes</Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" href="/Contato">Contato</Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" href="/Cadastro">Cadastre-se</Link>
                    </li>
                </ul>
            </div>
        </div>
    );
}

export default Menu;