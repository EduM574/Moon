<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" type="text/css" href="css/senhas.css" media="screen" />
        <title>Editar senha</title>
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
            <p class="title">Editar senha</p>
            <form action="CadastroAluno.do" method="POST" class="form">
                <div class="input-form">
                    <div class="box">
                        <input type="password" name="password" maxlength="15" placeholder="Nova senha">
                        <input type="password" name="password" maxlength="15" placeholder="Confirme a nova senha">
                    </div>
                </div>
                <button type="submit">Editar</button>
            </form>
        </section>
    </body>

    </html>

    </html>