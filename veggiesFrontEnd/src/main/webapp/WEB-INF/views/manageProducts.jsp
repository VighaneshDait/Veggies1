<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">

   <div class="row">
   <c:if test="${not empty message}">
   <div class="col-xs-12">
      <div class="alert alert-success alert-dismissible">
   <button type="button" class="close" data-dismiss="alert">&times;</button>
   
   ${message}
   </div>
   </div>
   </c:if>
   
       <div class="col-md-offset-2 col-md-8">
       
          <div class="panel panel-primary">
          
              <div class="panel-heading">
                 
                  <h4>Product Management</h4>
              
              </div>
              
              <div class="panel-body">
              
                     <!-- Form Elements -->
                     
                     <sf:form class="form-horizontal" modelAttribute="product"
                     action="${contextRoot}/manage/product"
                     method="POST"
                     >
                     
                     <div class="form-group">
                         <lable class="control-label col-md-4" for="name">Enter Product Name: </lable>
                   
                     <div class="col-md-8">
                           <sf:input type="text" path="name" id="name" placeholder="Product Name" class="form-control"/>
                           <em class="help-block">Please Enter Product Name!</em>
                     
                     </div>      
                     </div>
                        
                         <div class="form-group">
                         <lable class="control-label col-md-4" for="description">Product Description: </lable>
                   <div class="col-md-8">
                           <sf:input type="text" path="description" id="description" placeholder="Enter product description" class="form-control"/>
                           <em class="help-block">Please Enter Product Description Here!</em>
                     
                     </div> 
                         
                     </div>                   
           
           <div class="form-group">
                         <lable class="control-label col-md-4" for="unitprice">Enter Unit Price: </lable>
                   <div class="col-md-8">
                           <sf:input type="text" path="unitprice" id="unitprice" placeholder="Enter Unit Price" class="form-control"/>
                           <em class="help-block">Please Enter Product's Unit Price!</em>
                     
                     </div> 
                         
                     </div>
                     
                  <div class="form-group">
                         <lable class="control-label col-md-4" for="quantity">Quantity Available: </lable>
                   <div class="col-md-8">
                           <sf:input type="number" path="quantity" id="quantity" placeholder="0" class="form-control"/>
                           <em class="help-block">Please Enter Product Available Quantity Here!</em>
                     
                     </div> 
                         
                     </div>
                     
                    <div class="form-group">
                         <lable class="control-label col-md-4" for="categoryId">Select Category ID: </lable>
                   <div class="col-md-8">
                           <sf:select path="categoryId" id="categoryId" class="form-control"
                             items="${categories}"
                             itemLabel="name"
                             itemValue="id"
                           />
                             
                           <em class="help-block">Please Enter Product Category Here!</em>
                     
                     </div> 
                         
                     </div>
                     
                       <div class="form-group"></div>
                     <div class="col-md-offset-4 col-md-8">
                           <input type="submit" name="submit" id="submit" value="submit" class="btn btn-primary"/>
                           <!-- Hidden fields for products-->
                           <sf:hidden path="id"/>
                           <sf:hidden path="code"/>
                           <sf:hidden path="supplierId"/>
                           <sf:hidden path="active"/>
                           <sf:hidden path="purchases"/>
                           <sf:hidden path="views"/>
                           
                           </div>
                           </div>
                           
                           
                     </sf:form>
              </div>
          
          
          </div>
       
       </div>   
   
   
   
   </div>
</div>