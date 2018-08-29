
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:import url="/include/Header1.jsp"/>
    
    <style>
     
        body
        {
            background:url(assets/img/procurement2.jpg) no-repeat;
            background-size:cover;
            font-family:Arial,sans-serif;
        }
        
        footer{
            float: left;
            margin-top: 10px;
        }
    
    </style>
  
    <c:import url="/include/sideBar.jsp" />
    
    <div class="container" id="mainbody">
        
        <h1> Tenders Rejected </h1>
        
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Tender Number</th>
                        <th>Tender Description</th>
                        <th>Closing Date</th>
                        <th>Closing Time </th>
                        <th>Status </th>
                    </tr>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tenderR" items="${tenderR}" >
                    <tr>
                        <td> ${tenderR.getTenderNumber()}</td>
                        <td> ${tenderR.getDescription()}</td>
                        <td> ${tenderR.getClosingDate()}</td>
                        <td> ${tenderR.getClosingTime()}</td>
                        <td> ${tenderR.getStatus()}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
                
    <c:import url="/include/Footer.jsp" />