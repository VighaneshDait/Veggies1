$(function()
		{
	       switch(menu)
	        {
	       case 'About Us':
	    	   $('#about').addclass('active');
	    	   break;
	    	   
	       case 'Contact':
	    	   $('#contact').addclass('active');
	    	   break;
	    	   
	    	default: 
		    	   $('#home').addclass('active');
	    	   break;
	        }
		});