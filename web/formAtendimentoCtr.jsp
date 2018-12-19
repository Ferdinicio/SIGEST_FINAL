
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="sistema.Sistema"%> 
<%@page import="sistema.SisAtendimento"%> 
<%@page import="sistema.Atendimento"%> 
      <%
    
int os = Integer.parseInt (request.getParameter ("os"));  
      String status = request.getParameter ("status");
      String observacao = request.getParameter ("observacao");
 
            Atendimento p = new Atendimento (); 
            p.setObservacao(observacao);
            p.setStatus(status);
            p.setOs(os);
            
            java.util.Date d = new Date();
            
            DateFormat formatoDeHora = new SimpleDateFormat("H:mm:ss a");
            
            // A classe SimpleDateFormat permite adaptar a exibi��o de data e hora para um padr�o local de pa�s.
            //O construtor da mesma permite a passagem de uma  string de um caractere que formata a hora e a data.
//            H - Hora em de 0-23.
//            m - minutos.
//            s - segundo.
//            a - define o marcador AM/PM.        
            
            StringBuffer sb = new StringBuffer();
            
            String data = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
            String hora = formatoDeHora.format(d);
            
            //format(Date objeto) � um m�todo da classe DateFormat que permite a comvers�o de um objeco Date para string.
            
            
           
            
            
      
      p.setTempoInicio(data);
      p.setHoraInicio(hora);
      // p.setTempoInicio(new Date().getTime()); //set tamb�m um valor em tempoInicio do meu Processo.java
            sistema.SisAtendimento.instancia().updateAtendimento(p);
            session.setAttribute("atendimento", p);
            
          
      %>

<jsp:forward page= "Listchamado.jsp"/>