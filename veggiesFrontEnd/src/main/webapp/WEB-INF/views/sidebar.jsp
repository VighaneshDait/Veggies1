               <ul>         
              <c:forEach items="${categories}" var="category">
              
                           <li>
								<div class="col1 me-one">
									<a href="${contextRoot}/show/category/${category.id}/products"><h4>${category.name}</h4></a>
									
								</div>
								</li>
              
              </c:forEach>          
               </ul>         
                        
						