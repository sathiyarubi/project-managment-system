// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require foundation
//= require rails.validations
//= require rails.validations.simple_form



var i=1;
function remove_fields(link) {
    
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();

}


function getCount()
{
			var count_i = $("#count_i").text()*1;
			if(i<count_i)
			{
			i = count_i;
			}
}

function add_fields(link, association, content) {

			getCount();
			var new_id = ""+i;
			var regexp = new RegExp("new_" + association,"g");
			var fr_id = i-1;
			$("#timesheet-field"+fr_id).after("<tr id='timesheet-field"+new_id+"'> "+content.replace(regexp, new_id)+"</tr>");
			i++;
}


//$(function(){ $(document).foundation(); });
 

$.noConflict();
$(document).ready(function(){

  $("#week_start_date").change(function(){
	var date=$(this).val();
$.ajax
      ({
          type: "get",
          url: "/timesheets/ajaxtimesheet",
          data: "date="+date,
           success: function(response){
      
          $('#new_timesheet').html(response);
          }        

     	}); 
});

//this is for when choose user it will show  manager list

   $("#manager-list").hide();
   $('#employee_role_id').change(function(){
  
        var roleval = $(this).val();
         if (roleval != 3)
         {  
             $("#manager-list").hide();
         }
         else 
         {
	     $("#manager-list").show();
	 }
    });


// this code for date picker

   $('#employee_dob').datepicker({

      dateFormat : 'yy-mm-dd'
    
   });

  $('#employee_dob').blur(function(){
          var date=$(this).val();

          if(date == "")
          {    
  	      $('span#doberror').show();
              $('span#doberror').text("select the date");
              return true;
          }
          else
	   {
              $('span#doberror').hide();
              return true;
            }
  });



  $('#project_start_date').blur(function(){
          var date=$(this).val();

          if(date == "")
          {    
  	      $('span#doberror').show();
              $('span#doberror').text("select the date");
              return true;
          }
          else
	   {
              $('span#doberror').hide();
              return true;
            }
  });


   $('#project_start_date').datepicker({
        
        dateFormat : 'yy-mm-dd'
   });


  $('#project_end_date').blur(function(){
          var date=$(this).val();

          if(date == "")
          {    
  	      $('span#dob-error').show();
              $('span#dob-error').text("select the date");
              return true;
          }
          else
	   {
              $('span#dob-error').hide();
              return true;
            }
  });
 
//this is for form event

    $('form').click(function(){
              $('span#dob-error').hide();                   
     });


  $('#project_end_date').datepicker({
        
        dateFormat : 'yy-mm-dd'
   });

			$("#week_start_date").datepicker({
					  beforeShowDay: function(date) {
						var a = new Array();
						a[0] = date.getDay() == 1 ;
						return a;
			 }
   });

});



function timesheet(id,val)
{

        var getvalue = id;
				var arr = id.split('_');
				var row = arr[4];
			 	var col = arr[5];
			  document.getElementById('timesheet_timesheet_details_attributes_'+row		   +'_total_hours').value=rowSum(row);
				document.getElementById('timesheet_'+col).value=colSum(col);
				document.getElementById('timesheet_total_hours').value=grandTotal();
}



function rowSum(row)
{
				var sun = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_sunday').value*1;
				var mon = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_monday').value*1;
				var tue = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_tuesday').value*1;
				var wed = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_wednesday').value*1;
				var thu = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_thursday').value*1;
				var fri = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_friday').value*1;
				var sat = document.getElementById('timesheet_timesheet_details_attributes_'+row+'_saturday').value*1;
				var total = sun+mon+tue+wed+thu+fri+sat;
				return total;
}


function colSum(col)
{
			var total= 0;
			for(j=0;j<i;j++)
			{
		
				var total = total + document.getElementById('timesheet_timesheet_details_attributes_'+j+'_'+col).value*1;
			}
			return total;
}



function grandTotal()
{

			var total= 0;
			for(k=0;k<i;k++)
			{
				   
				var total = total + document.getElementById('timesheet_timesheet_details_attributes_'+k+'_total_hours').value*1;
	
				   }
			return total;
}





























$(function(){ $(document).foundation(); });
