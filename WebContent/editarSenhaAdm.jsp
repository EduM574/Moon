<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Administrador" %>
        <%
            if (session.getAttribute("aluno") == null && session.getAttribute("adm") == null) {
                //caso a pessoa não esteja logada
                response.sendRedirect("loginAdm.jsp");

            } else if(session.getAttribute("aluno") != null) {
                //caso a pessoa que esteja logada seja um aluno
                response.sendRedirect("UserHomeAluno.do");
                
            } else {
            
            	Administrador adm = (Administrador) session.getAttribute("adm");
        
        %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8" />
                <link rel="stylesheet" type="text/css" href="css/senhas.css" media="screen" />
                <script src="js/script.js" defer></script>
                <title>Editar senha</title>
            </head>

            <body>
                <header>
                    <div class="container main-header">
                        <span class="logo">MO<span class="logo-pink">O</span>N</span>
                        <div class="username-wrapper">
                            <span>
                                <%= adm.getNome() %>
                            </span>
                            <form action="Logout.do" method="post" class="logout-wrapper">
                                <button type="submit">
			                        <img src="img/logout.png" alt="logout">
			                    </button>
                            </form>
                        </div>
                    </div>
                </header>
                <% 
                    String editar, adicionar;
                
                	if(adm.getSetor().getIdSetor() == 4) {
                        editar = "listaUser.jsp";
                        adicionar = "cadastrarUser.jsp";
                	} else {
                        editar = "ListaAlunos.do";
                        adicionar = "cadastroAluno.jsp";
                	}
                %>
                    <nav>
                        <form action="UserHomeAdm.do" method="post" class="form-nav-wrapper">
                            <button type="submit">
                                <img src="./img/home.png" alt="Home">
                            </button>
                        </form>
                        <a href="<%=editar%>">
                            <div class="menu-icon-wrapper">
                                <img src="./img/newsfeed.png" alt="Alunos/ADMs">
                            </div>
                        </a>
                        <a href="<%=adicionar%>">
                            <div class="menu-icon-wrapper">
                                <img src="./img/add-friend.png" alt="Adicionar usuário">
                            </div>
                        </a>
                        <a href="verPerfilAdm.jsp">
                            <div class="menu-icon-wrapper">
                                <img src="./img/user.png" alt="Visualizar perfil">
                            </div>
                        </a>
                        <a href="editarSenhaAdm.jsp">
                            <div class="menu-icon-wrapper">
                                <img src="./img/configuration.png" alt="Editar senha">
                            </div>
                        </a>
                    </nav>

                    <section class="content">
                        <p class="title">Editar senha</p>
                        <form id="editarSenhaAdm" action="EditarSenhaAdm.do" method="POST" class="form">
                            <div class="input-form">
                                <div class="box">
                                    <input id="passEditarAdm" type="password" name="password" maxlength="30" placeholder="Nova senha" required>
                                    <input id="confEditarAdm" type="password" name="passwordConfirm" maxlength="30" placeholder="Confirme a nova senha" required>
                                    <p id="errorPassword"></p>
                                </div>
                            </div>
                            <button type="submit" onclick=" return editarSenhaAdm()">Editar</button>
                        </form>
                    </section>
            </body>

            </html>

            <%
                }
            %>