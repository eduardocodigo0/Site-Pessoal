package servlets;

import DAO.PostDAO;
import beans.Arquivo;
import static com.sun.xml.internal.ws.spi.db.BindingContextFactory.LOGGER;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author live
 */
@MultipartConfig(location="/imagens", fileSizeThreshold=1024*1024, 
maxFileSize=1024*1024*5, maxRequestSize=1024*1024*5*5)
public class novoPost extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, ClassNotFoundException, SQLException {
       
            PostDAO dao = new PostDAO();
            Arquivo arq = new Arquivo();
            HttpSession s = request.getSession();
            DateFormat df = new SimpleDateFormat("dd/mm/yy"); 

            String titulo = request.getParameter("titulo");
            String datahora = request.getParameter("data");
            String conteudo = request.getParameter("conteudo");
            String img = request.getParameter("imagem");
            
            if(!titulo.isEmpty() || !conteudo.isEmpty()){
                if(ServletFileUpload.isMultipartContent(request)){
                    try{
                        List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                        
                        for(FileItem item : multiparts){
                            if(!item.isFormField()){
                                item.write(new File(request.getServletContext().getRealPath("imagens")+File.separator+"imagen"));
                                
                            }
                        }
                        if(dao.novoPost(titulo, new Date(System.currentTimeMillis()), conteudo,img )){ s.setAttribute("teste2", 1);}else{ s.setAttribute("teste2", 2);}
                        s.setAttribute("teste2", 1);
                    }catch(Exception e){
                        s.setAttribute("teste2", 4);
                    }
                }else{
                    if(dao.novoPost(titulo, new Date(System.currentTimeMillis()), conteudo, "")){ s.setAttribute("teste2", 1);}else{ s.setAttribute("teste2", 2);}  
                    }
                   
                   
                }
            response.sendRedirect("criar-novo-post.jsp");
        
        
        
    }
    


 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("criar-novo-post.jsp");
        //processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException | ClassNotFoundException | SQLException ex) {
            Logger.getLogger(novoPost.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
