<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link type="text/css" rel="stylesheet" href="./css/estilo.css">
  <title>Cadastro</title>
</head>

<body>
    <div class="header-menu">
      <div class="container">
        <div class="header-logo">
          <a href="index.html"><img src="./img/logo.png" alt="img_logo"></a>
        </div>
        <div class="header-nav-menu">
          <ul class="nav justify-content-center">
            <li class="nav-item">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="passagens.html">Passagens</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="pacotes.html">Pacotes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contato.html">Contato</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cadastro.html">Cadastre-se</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  <section>
    <main>
      <div class="formulario">
        <form>
          <div class="form-group">
            <label for="inputNome">Nome completo</label>
            <input type="text" class="form-control" id="inputNome" placeholder="Digite seu nome">
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputCpf">CPF</label>
              <input type="email" class="form-control" id="inputCpf" placeholder="Digite seu cpf">
            </div>
            <div class="form-group col-md-6">
              <label for="inputRg">RG</label>
              <input type="password" class="form-control" id="inputRg" placeholder="Digite seu RG">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail">Email</label>
            <input type="text" class="form-control" id="inputEmail" placeholder="Digite seu email">
          </div>
          <div class="form-row">
            <div class="form-group col-md-8">
              <label for="inputCity">Cidade</label>
              <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
              <label for="inputEstado">Estado</label>
              <select id="inputEstado" class="form-control">
                <option>...</option>
                <option value="AC">Acre</option>
                <option value="AL">Alagoas</option>
                <option value="AP">Amapá</option>
                <option value="AM">Amazonas</option>
                <option value="BA">Bahia</option>
                <option value="CE">Ceará</option>
                <option value="DF">Distrito Federal</option>
                <option value="ES">Espírito Santo</option>
                <option value="GO">Goiás</option>
                <option value="MA">Maranhão</option>
                <option value="MT">Mato Grosso</option>
                <option value="MS">Mato Grosso do Sul</option>
                <option value="MG">Minas Gerais</option>
                <option value="PA">Pará</option>
                <option value="PB">Paraíba</option>
                <option value="PR">Paraná</option>
                <option value="PE">Pernambuco</option>
                <option value="PI">Piauí</option>
                <option value="RJ">Rio de Janeiro</option>
                <option value="RN">Rio Grande do Norte</option>
                <option value="RS">Rio Grande do Sul</option>
                <option value="RO">Rondônia</option>
                <option value="RR">Roraima</option>
                <option value="SC">Santa Catarina</option>
                <option value="SP">São Paulo</option>
                <option value="SE">Sergipe</option>
                <option value="TO">Tocantins</option>
                <option value="EX">Estrangeiro</option>
              </select>
            </div>
          </div>
          <div class="form-group">
          </div>
          <div><button type="submit" class="btn btn-warning">Enviar</button></div>
          <div><button type="reset" class="btn btn-success">Limpar</button></div>
        </form>
      </div>
    </main>
  </section>
  <br>
  <div class="container">
  	<div class="cold-md-7">
  		<hr>
  		<h3>Cidades cadastradas</h3>
  		<hr>
  		<table class="table">
  			<thead>
  				<tr>
  					<th>#</th>
  					<th>Cidade de origem</th>
  					<th>Cidade de destino</th>
  					<th>Data de ida</th>
  					<th>Data de volta</th>
  			</thead>
  			<tboady>
  				<c:forEach items="${itinerarios}" var="itinerario">
  							<tr>
  								<td>${itinerario.id}</td>
  								<td>${itinerario.cidade_origem}</td>
  								<td>${itinerario.cidade_destino}</td>
  								<td>${itinerario.data_ida}</td>
  								<td>${itinerario.data-volta}</td>
  								<td>
  									<a href="ItinerarioDelete?itinerarioId=${itinerario.id}">deletar</a>
  									<a href="ItinerarioUpdate?itinerarioId=${itinerario.id}">atualizar</a>
  								</td>
  							</tr>
  						</c:forEach>						  						
  			</tboady>
  		</table>
  	</div>
  </div>
