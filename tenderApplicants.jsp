<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="include/Header1.jsp"/>

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

<div id="sideBar">
    <section id="label">
        <h1> DCPO </h1>
        
        <p class="text-left"><span class="label label-default">Name: ${user.getName()}</span></p>
        
    </section>
    
    <section id="link">
        
        <a class="btn btn-default active btn-block btn" role="button" href="createTender.jsp"> Create Tender</a>
        <a class="btn btn-default active btn-block btn" role="button" href="tender"> Active Tenders</a>
        
    </section>
</div>
<div class="container" id="mainbody">

    <h1>Tender Applicants</h1>
    
    <c:if test="${CTMsg != null}">
      <script>
            alert('${CTMsg}');
        </script>
    </c:if>
    
    <div class="table-responsive">
        
        <table class="table">
            
            <thead>
                
                <th>Company name</th>
                <th>Amount</th>
                <th>Action</th>
                <th>Status</th>
            </thead>
            <tbody>
                
                <c:forEach var="bid" items="${bids}" >
                     <tr>
                         <td>${bid.companyname}</td>
                         <td>${bid.amount}</td>
                         <td>
                             <form action="ApproveTender" method="POST">
                                 <input type="hidden" name="Id" value="${bid.getId()}" />
                                 <input type="hidden" name="tenderNumber" value="${bid.tenderNumber}" />
                                 <input type="button" value="Approve tender" onclick="confirmApproveTender(this.form)" />
                                 
                             </form>
                         </td>
                         <td>${bid.status}</td>
                </tr>
                </c:forEach>
               
            </tbody>
        </table>
        
    </div>
</div>
        
        <script>
            function confirmApproveTender(form){
                var conf = confirm("Do you wish to approve this Application?");
                
                if(conf === false){
                    preventDefault();
                }
                else{
                    form.submit();
                }
                
            }
         </script>
<c:import url="include/Footer.jsp" />


 
    