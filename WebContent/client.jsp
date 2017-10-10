<%@page import="ws.BanqueServiceProxy"%>
<%
double montant=0; double resultat=0;
if(request.getParameter("montant")!=null){
montant=Double.parseDouble(request.getParameter("montant"));
BanqueServiceProxy service=new BanqueServiceProxy();
resultat=service.conversionEuroToDh(montant);
}
%>
<html><body>
<form action="client.jsp">
Montant :<input type="text" name="montant" value="<%=montant%>">
<input type="submit" value="OK">
</form>
<%=montant %> en Euro est égale à <%=resultat %> en DH
</body></html>