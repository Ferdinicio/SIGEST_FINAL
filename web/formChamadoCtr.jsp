<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="sistema.Sistema"%> 
<%@page import="sistema.SisAtendimento"%> 
<%@page import="sistema.Atendimento"%> 
      <%
    
      String descricao = request.getParameter ("p.descricao"); //requisi��o de um parametro em string chamado p.descricao (que est� no formProcesso)
      String cliente = request.getParameter ("p.cliente");
      String equipamento = request.getParameter ("p.equipamento");
      String observacao = request.getParameter ("p.observacao");
      String status = "Aberto";
      Atendimento p = new Atendimento(); //instancia um novo processo de Processo.java
      p.setDescricao(descricao); // seta a string que eu dei request na minha descricao ques est� dentro de Processo.java 
      p.setCliente(cliente);
      p.setEquipamento(equipamento);
      p.setObservacao(observacao);
      p.setStatus(status);
    
      java.util.Date d = new Date();
      
      DateFormat formatoDeHora = new SimpleDateFormat("H:mm:ss a");
      
      String hora = formatoDeHora.format(d);

String data = java.text.DateFormat.getDateInstance(DateFormat.MEDIUM).format(d);
      
      p.setTempoInicio(data);
      p.setHoraInicio(hora);
      // p.setTempoInicio(new Date().getTime()); //set tamb�m um valor em tempoInicio do meu Processo.java
      sistema.SisAtendimento.instancia().insertAtendimento(p);
      session.setAttribute("atendimento", p);
      %>

<jsp:forward page= "Listchamado.jsp"/>
