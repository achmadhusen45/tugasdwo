<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/tugasakhir?user=root&password=" catalogUri="/WEB-INF/queries/adw1.xml">

select {[Measures].[Sub Total],[Measures].[Total Due]} ON COLUMNS,
  {([Time].[All Times],[ShipMethod].[All Methods],[Product].[All Products])} ON ROWS
from [SellingFact]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorks Selling Fact using Mondrian OLAP</c:set>
