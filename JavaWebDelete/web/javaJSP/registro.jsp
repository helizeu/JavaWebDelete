<%@page import="javaBeans.Usuario"%>
<%  
    Usuario user = new Usuario(); // Instancia o objeto Usuario 
    if ( !(user.statusSQL == null) ) out.println(user.statusSQL);
    
    user.nome = request.getParameter("nome");
    user.email = request.getParameter("email");
    user.celular = request.getParameter("celular");
    user.senha = request.getParameter("senha");
    user.nivel = request.getParameter("nivel");
    user.incluir();
    if ( !(user.statusSQL == null) ) out.println(user.statusSQL);
    else
    {
    
      String sHTML="<center>Usuário criado com Sucesso!<br>"
       + "<a href = '../index.html'> Voltar </a></center>";
       out.println(sHTML);
      }
 %>