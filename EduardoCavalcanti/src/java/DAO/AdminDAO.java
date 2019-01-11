package DAO;

import beans.AdminBean;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AdminDAO extends Conecta {
    
    private ArrayList<AdminBean> lista;
     
    public boolean novoADM(AdminBean novo) throws ClassNotFoundException, SQLException{
        if((!novo.getNome().isEmpty()) && (!novo.getSenha().isEmpty()) ){
            if(procuraADM(novo.getNome(), novo.getSenha()) == null){
                String sql = "INSERT INTO admin (nome, senha)"
                            +"VALUES(?,?)";
                try{
                    Connection con = FazerConexao();
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, novo.getNome());
                    ps.setString(2, md5Creator(novo.getSenha()));

                    ps.execute();
                    ps.close();
                    return true;

                }catch(ClassNotFoundException e){System.err.println(e);}
                catch(SQLException e){
                    System.err.println("\n\nErro na criação do novo ADM.\n\n");
                }
        }
    }
        return false;
        
    }
    public void setLista() throws ClassNotFoundException, SQLException{
        lista = new ArrayList<>();
        
        String sql = "SELECT * FROM admin";
        
        Connection con = FazerConexao();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
         AdminBean adm = new AdminBean();
         adm.setId(rs.getInt("id"));
         adm.setNome(rs.getString("nome"));
         adm.setSenha(rs.getString("senha")); 
         
         this.lista.add(adm);
        }
    }

    public ArrayList<AdminBean> getLista() {
        return lista;
    }
    
    public AdminBean procuraADM(String nome, String senha) throws ClassNotFoundException, SQLException{
        String senhaMD5 = md5Creator(senha);
        String sql = "SELECT * FROM admin where nome = ?";
        Connection con = FazerConexao();
        AdminBean adm = new AdminBean();
        adm.setId(0);
        
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, nome);
        
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            adm.setId(rs.getInt("id"));
            adm.setNome(rs.getString("nome"));
            adm.setSenha(rs.getString("senha"));   
        }
        if(adm.getSenha() == senhaMD5){
            System.out.println("\n\n\n"+adm.getNome()+"\n\n\n");
            return adm;
            
        }else{
            return null;
        }
        
    }
    
    
     private String md5Creator(String senha){
        if(!senha.isEmpty()){
            try{

                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(senha.getBytes(), 0,senha.length());
                return new BigInteger(1,md.digest()).toString(16);

           }catch(NoSuchAlgorithmException nsae){
               System.err.println(nsae);
               throw new RuntimeException("Falha na criação de Hash");
           }
        }
        
        System.err.println("Senha vazia");   
        return senha;
    }
    
}
