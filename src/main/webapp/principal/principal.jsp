<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Principal</title>

<script
	src="<%=request.getContextPath()%>/resources/jquery/jquery-3.6.0.js"></script>
<!-- chamada do css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
<!-- chamada do js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>

<script
	src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- tag semantica HEADER-->
	<jsp:include page="include-navbar.jsp"></jsp:include>

	
	<br />
	<div class="container" style="width: 450px;">
		<div class="card" class="card border border-primary"
			style="background-color: rgb(229, 242, 251); padding: 10px;">

			<!-- Envia(Post) os dados para o UsuarioControllerServlet -->
			<form action="<%=request.getContextPath()%>/UsuarioControllerServlet" method="post" id="form-usuarios">
				<h2 class="card-title text-center">Cadastro de usuário</h2>

				<div class="form-group">
					<label>Id:</label><br /> <input type="text" class="form-control"
						name="id" id="id" readonly="readonly" value="${usuarioForm.id}">
				</div>

				<div class="form-group">
					<label>Nome:</label><br /> <input type="text" class="form-control"
						name="nome" id="nome" autocomplete="off" required="required"
						value="${usuarioForm.nome}">
				</div>

				<div class="form-group">
					<label>Username:</label><br /> <input type="text"
						class="form-control" name="username" id="username"
						autocomplete="off" required="required"
						value="${usuarioForm.username}">
				</div>

				<div class="form-group">
					<label>E-mail:</label><br /> <input type="text"
						class="form-control" name="email" id="email" autocomplete="off"
						required="required" value="${usuarioForm.email}">
				</div>

				<div class="form-group">
					<label>Senha:</label><br /> <input type="password"
						class="form-control" name="senha" id="senha" autocomplete="off"
						required="required" value="${usuarioForm.senha}">
				</div>

				<button type="submit" class="btn btn-login btn-success"
					value="salvar">Salvar</button>

				<button type="button" class="btn btn-login btn-success" value="novo"
					onclick="limparFormulario();">Novo</button>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-login btn-success"
					data-toggle="modal" data-target="#modal-pesquisar">Pesquisar</button>
				<br /> <span>${mensagem}</span>

			</form>

			<!-- Lista de usuários -->
			
			

			<br/>
			
	

	<script>
		function limparFormulario() {
			var campos = document.getElementById("form-usuarios").elements;

			for (i = 0; i < campos.length; i++) {
				campos[i].value = "";
			}
		}
	</script>

</body>
</html>