
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
        
        ${message}
        <h1> Tenders Application </h1>
        
        <label> <strong> Company Name: </strong></label>
        <label> ${user.getCompanyName()} </label><br><br>

        <label><strong> Tender Number: </strong></label>
        <label> ${tenders[count].getTenderNumber()} </label><br><br>

        <label><strong> Tender Description: </strong></label>
        <label> ${tenders[count].getTenderDescription()}</label><br><br>

        <form action="Apply" method="POST">
            <label><strong> Bid Amount: </strong></label>
            <input type="text" name="amount">
            <input type="submit" value="Apply">
        </form>
  
        
    </div>
                
        <c:import url="/include/Footer.jsp" />