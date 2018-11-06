/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import data.DataMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logic.Person;

/**
 *
 * @author thomas
 */
@WebServlet(name = "FrontControl", urlPatterns = {"/FrontControl"})
public class FrontControl extends HttpServlet {
    DataMapper dm = new DataMapper();
    // VORES COLLECTION med personer.
    public static List<Person> persons = new ArrayList();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        persons.add(new Person("karl","p234")); //out commented from week 1.
//        persons.add(new Person("henning","q321"));
        // Origin er vores måde at bruge en hidden input fra jsp-siden så vi ved hvor requestet kom fra.
        String origin = request.getParameter("origin");
        switch (origin) {
            case "register": //Vi kom fra register.jsp
                register(request, response);
                break;
            case "login": //Vi kom fra login.jsp
                if(login(request, response))
                    
                    request.getRequestDispatcher("hello.jsp").forward(request, response);
                break;
            case "showAllUsers": //kør denne servlet med: /FrontControl?origin=showAllUsers
                request.setAttribute("allusers", dm.getAllUsers()); //data mapper klassen bruges til at køre getAllUsers() som returnerer en liste af users som sættes fast på request objektet og sendes til viewet: showusers.jsp
                    request.getRequestDispatcher("showusers.jsp").forward(request, response);
                break;
            case "multiselect": //Vi kom fra multiselect.jsp
                String[] languages = request.getParameterValues("language");
                request.setAttribute("languages", languages);
                for (String language : languages) {
                    System.out.println(language);
                    
                }
                request.setAttribute("persons", persons);
                request.getRequestDispatcher("multiviewresult.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }
    private void register(HttpServletRequest request, HttpServletResponse response){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Person person = new Person(username,password);
        persons.add(person); //vi smider den nye person op i listen i linje 26.
    }
    private boolean login(HttpServletRequest request, HttpServletResponse response){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        for (Person person : persons) { //gennemløber alle personer
            if(person.getUsername().equals(username)) //finder person med rigtig username
                return person.getPassword().equals(password); //returnere sandt eller falsk afhængig af om password passer.
        }
        return false;
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        return "Short description";
    }// </editor-fold>

}
