
package com.mycompany.amazonclone.servlets;

import com.mycompany.amazonclone.dao.UserDao;
import com.mycompany.amazonclone.entities.User;
import com.mycompany.amazonclone.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class LoginServlet extends HttpServlet {

        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
            //coding area
            String email= request.getParameter("email");
            String password=request.getParameter("password");
            
            //authenticating user
            UserDao userDao=new UserDao(FactoryProvider.getFactory());
          User user = userDao.getUserByEmailAndPassword(email, password);
          
            HttpSession httpsession =request.getSession();
          if(user == null){
              httpsession.setAttribute("message","Invalid Details!! try with another one");
              response.sendRedirect("login.jsp");
              return;
          }else{
              out.println("<h1> Welcome" +user.getUserName()+ "</h1>");
              //login
              httpsession.setAttribute("current-user", user);
              
              if(user.getUserType().equals("admin"))
              {
                  response.sendRedirect("admin.jsp");
              }else if(user.getUserType().equals("normal")){
              response.sendRedirect("normal.jsp");
          }else
              {
                  out.println("We have not identified user type");
              }
              
              //admin.jsp
              
              
              //normal.jsp
          }
          }catch (Exception e) {
            e.printStackTrace();
            
            
            
        }
    }

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "LoginServlet for user authentication";
    }// </editor-fold>

}
