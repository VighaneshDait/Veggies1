$(function()
		{
	   switch(menu)
       {
      case 'About Us':
   	   $('#about').addClass('active');
   	   break;
   	   
      case 'Contact':
   	   $('#contact').addClass('active');
   	   break;
   	   
      case 'Manage Product':
      	   $('#manageProducts').addClass('active');
      	   break;
   	   
   	default: 
	    	   $('#home').addClass('active');
   	   break;
       }
		


  var $table = $('#productListTable');
  
  //execute the below code only where we have this table
  
  if($table.length){
	  
	 //console.log('Inside the table!');
	  
	  var jsonUrl='';
	   if(window.categoryId != '')
		   {
		  jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';
		   }
	  
	   $table.DataTable({
			lengthMenu : [[3,5,10,-1],['3 ','5 ','10 ','ALL']],
			pageLength: 5,
		ajax: {
			url: jsonUrl,
			dataSrc: ''
		},
		  columns: [

		            {
		            	data: 'code',
		            	mRender: function(data, type, row){
		            		
		            		return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" width="100px" height="100px"/>';
		            	}
		            },
		            
		            {
		            	data: 'name'
		            },
		         
		            
		            {
		            	data: 'unitprice',
		            	mRender: function(data,type,row){
		            		return '&#8377;' + data
		            	}
		            },
		            
		            {
		            	data: 'quantity'
		            },
	              	            
                    {
		            	data: 'id',
		            	
                    	
		            	bSortable: false,
		            	mRender: function(data,type,row){
		            		
		            		var str = '';
		            		str += '<a href="'+window.contextRoot+ '/show/'+data+'/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a>&#160';
		            		str += '<a href="'+window.contextRoot+ '/cart/add/'+data+'/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
		            		
		            		return str;
		            	} 
		           
                    }
                                		  
		         ]
	
	  });
  }
  
  //dismissing the alert after 3 seconds
  var $alert = $('.alert');
  
     if($alert.length){
    	 
    	 setTimeout(function(){
    		 
    		 $alert.fadeOut('slow');
    	 }, 3000)
    	 
     }  
  

});
