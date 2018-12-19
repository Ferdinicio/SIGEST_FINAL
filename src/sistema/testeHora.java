import java.util.Calendar;

import java.util.Date;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class testeHora {
    
    public static void main(String[] args) {
        
        Date d = new Date();
        
        DateFormat formato = new SimpleDateFormat("H:mm:ss a");
        
       
                
        
           StringBuffer sb = new StringBuffer();
            
            String data = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
            String hora = formato.format(d);
            
            sb = sb.append(data).append(" -- ").append(hora);
            
            String horaAtual = sb.toString();
            
            String a = "babababa", b = "1";
            
            if(a!=b) System.out.println("Uhu");
        
    }
    
}
