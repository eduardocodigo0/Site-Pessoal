
package beans;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Arquivo {
    
    public boolean upload(String pasta, String nomeArquivo, InputStream arquivoCarregado) throws FileNotFoundException{
        String path = pasta+"/"+nomeArquivo;
        File novoArquivo = new File(path);
        FileOutputStream saida = new FileOutputStream(novoArquivo);
        return copiar(arquivoCarregado, saida);
        
    }
    
    private boolean copiar(InputStream origem, OutputStream destino){
        int bite = 0;
        byte[] tamanhoMaximo = new byte[1024 * 300];//+ou- 300kb
        try {
            while((bite = origem.read(tamanhoMaximo)) >= 0){
                destino.write(tamanhoMaximo, 0, bite);
            }
            return true;
        } catch (IOException ex) {
           ex.printStackTrace();
           return false;
        }
        
    }
    
}
