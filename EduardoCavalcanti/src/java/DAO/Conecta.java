
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conecta {
    
    public Connection FazerConexao() throws ClassNotFoundException{
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://localhost:5432/sitepessoal" ,usuario = "postgres", senha = "senha";
        try{
            return DriverManager.getConnection(url, usuario, senha);
            
        }catch(SQLException e){
            System.err.println("Erro na conexao! \n DETALHES:" + e);
        }   
        return null;
    }

}

   
