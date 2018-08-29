<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<c:import url="/include/Header1.jsp"/>

<c:import url="/include/sideBar2.jsp"/>

<div class="container" id="mainbody">

    <h1> Create New Tender</h1>
    
    <c:if test="${CTMsg != null}">
        <script>
            alert('${CTMsg}');
    </script>
    </c:if>
    
    <div class="table-responsive">
        <form  method="POST" class="form-group" action="CreateTender">
            <table class="table">
                <tr>
                    <td><label> Tender Description</label></td>
                    <td><textarea name="description" rows="7" cols="10" required class="form-control" ></textarea></td>
                </tr>
                
                <tr>
                    <td><label>Closing date</label></td>
                    <td><input type="date" name="closingdate" required class="form-control" /></td>
                </tr>
                
                
            </table>
            
            <input type="button" class="btn" value="Create tender" onclick="confirmTenderCreation(this.form)" />
        </form>
    </div>
</div>
        
<script>
    
       
    function confirmTenderCreation(form){
        
        if(form.description.value ===""){
            form.description.focus();
            alert("Provide a description of the tender");
        }
        else  if(form.closingdate.value ===""){
            form.closingdate.focus();
            alert("Please provide tender expiration date");
        }
        else{
            form.submit();
        }
    }
    
    
    </script>

<c:import url="/include/Footer.jsp" />