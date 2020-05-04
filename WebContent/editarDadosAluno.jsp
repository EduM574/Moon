<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="css/cadastroAluno.css" media="screen" />
		<title>Editar Aluno</title>
	</head>
	<body>
		<header>
            <div class="container main-header">
                <span class="logo">MO<span class="logo-pink">O</span>N</span>
                <div class="username-wrapper">
                    <span>User Name</span>
                    <div class="logout-wrapper">
                        <img src="img/logout.png" alt="logout">
                    </div>
                </div>
            </div>
        </header>
        <nav>
            <a href="#">
                <div class="menu-icon-wrapper">
                    <img src="./img/home.png" alt="Home">
                </div>
            </a>
            <a href="#">
                <div class="menu-icon-wrapper">
                    <img src="./img/newsfeed.png" alt="Solicitações">
                </div>
            </a>
            <a href="#">
                <div class="menu-icon-wrapper">
                    <img src="./img/add-friend.png" alt="Adicionar usuário">
                </div>
            </a>
            <a href="#">
                <div class="menu-icon-wrapper">
                    <img src="./img/user.png" alt="Editar perfil">
                </div>
            </a>
        </nav>
        <section class="content">
        	<p class="title">Editar um aluno</p>
            <form action="CadastroAluno.do" method="POST" class="form">
                <div class="input-form">
                    <div class="box">
                        <input type="text" name="nome" placeholder="Nome">
                        <div class="mini-box">
                    		<input type="text" name="cpf" placeholder="CPF" class="normal">
                    		<input type="date" name="nascimento" placeholder="Data de nascimento" class="normal">
                    	</div>
                        <div class="mini-box">
                            <select name="curso" class="maior">
                                <option value="CCP" selected>Ciência da Computação</option> 
                                <option value="ECP">Engenharia da Computação</option>
                                <option value="ADS">Análise e Desenvolvimento de Sistemas</option>
                            </select>
                            <select name="semestre" class="menor">
                                <option value="1" selected>1º</option> 
                                <option value="2">2º</option>
                                <option value="3">3º</option>
                                <option value="4">4º</option>
                                <option value="5">5º</option>
                                <option value="6">6º</option>
                                <option value="7">7º</option>
                                <option value="8">8º</option>
                            </select>
                        </div>
                        <input type="password" name="password" maxlength="15" placeholder="Nova senha">
                    </div>
                    <div class="box">
                        <input type="text" name="sobrenome" placeholder="Sobrenome">
                        <input type="email" name="email" placeholder="E-mail">
                        <div class="mini-box">
                            <select name="unidade" class="normal">
                                <option value="paulista" selected>Paulista</option> 
                                <option value="mooca">Mooca</option>
                                <option value="santana">Santana</option>
                            </select>
                            <select name="turno" class="normal">
                                <option value="matutino" selected>Matutino</option> 
                                <option value="vespetino">Vespetino</option>
                                <option value="noturno">Noturno</option>
                            </select>
                        </div>
                        <select name="status" class="altura-diferente">
                                <option value="ATIVO" selected>ATIVO</option> 
                                <option value="INATIVO">INATIVO</option>
                        </select>
                    </div>
                </div>
				<button type="submit">Editar</button>
            </form>
        </section>
	</body>
</html>