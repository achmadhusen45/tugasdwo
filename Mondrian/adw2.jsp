<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/tugasakhir?user=root&password=" catalogUri="/WEB-INF/queries/adw2.xml">

select {[Measures].[Stocked Quantity]} ON COLUMNS,
  {([Time].[All Times],[Vendor].[All Vendors],[Product].[All Products])} ON ROWS
from [StockFact]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorks Stock Fact using Mondrian OLAP</c:set>
