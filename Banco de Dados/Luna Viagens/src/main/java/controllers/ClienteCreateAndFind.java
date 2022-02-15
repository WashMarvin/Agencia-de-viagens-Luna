package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDao;
import model.Cliente;


@WebServlet("/CreateAndFind")
public class ClienteCreateAndFind extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ClienteCreateAndFind() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cliente cliente = new Cliente();
		
		cliente.setNome(request.getParameter("txtNome"));
		cliente.setCpf(request.getParameter("txtCpf"));
		cliente.setRg(request.getParameter("txtRg"));
		cliente.setEmail(request.getParameter("txtEmail"));
		cliente.setCidade(request.getParameter("txtCidade"));
		cliente.setEstado(request.getParameter("txtOpcao"));
		
		ClienteDao.create(cliente);
		
		doGet(request, response);
	}

}
