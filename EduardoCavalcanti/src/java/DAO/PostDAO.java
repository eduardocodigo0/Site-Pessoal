
package DAO;

import beans.PostBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;


public class PostDAO extends Conecta{
    
    private ArrayList<PostBean> posts;

    public ArrayList<PostBean> getPosts() {
        return posts;
    }
    
    public boolean novoPost(String titulo, Date datahora, String conteudo, String imagem) throws ClassNotFoundException, SQLException{
        String sql = "INSERT INTO post (titulo, datahora, conteudo, imagem) VALUES (?, ?, ?, ?);";
        java.sql.Date data = new java.sql.Date(datahora.getTime());
        
        Connection con = FazerConexao();
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, titulo);
        st.setDate(2, data);
        st.setString(3, conteudo);
        st.setString(4, imagem);
        
        boolean resultado = st.execute();
        
        st.close();
        con.close();
        
        return resultado;
        
    }

    public void setPosts() throws ClassNotFoundException, SQLException {
        posts = new ArrayList<>();
        
        String sql = "SELECT * FROM post";
        
        Connection con = FazerConexao();
        PreparedStatement st = con.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        
        while(rs.next()){
            PostBean post = new PostBean();
            post.setId(rs.getInt("id"));
            post.setTitulo(rs.getString("titulo"));
            post.setData(rs.getDate("datahora"));
            post.setConteudo(rs.getString("conteudo"));
            post.setImagem(rs.getString("imagem"));
            
            
            this.posts.add(post);
        }
        
        rs.close();
        st.close();
        con.close();
        
        
        
    }
    
    
    
}
