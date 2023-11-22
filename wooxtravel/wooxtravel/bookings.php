<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
 <div class="container mt-5">
 <h2>Student Form</h2>
 <form id="studentForm" method="post"     >
  <div class="form-group">
	<label> Program </label>
  <?php
  include 'conn.php';  
  $sql = "select * from tblprograms "; 
	$rs = $conn->query ($sql); ?>
 <select  name='program' id='program' class='form-control' > 
   <option value=''>Select Program </option> 
	<?php 
	while ($row =  $rs->fetch_assoc()) 
	{  ?>
      <option  value=<?php echo $row['programcode'];?> > 
	<?php echo $row['programcode'];?> 
     </option>
     <?php      
	 }
	 ?>
 </select>
 </div> 
<div id='program_dtls' style='color:red;'> </div> 
 

<div class="form-group">
<label  for="course">Course</label>
 <?php
$sql = "select * from tblcourse   "; 
$rs = $conn->query ($sql);  ?>
  <select  name='course' id='course' class='form-control'> 
 <option value=''>Select Course</option>
<?php 			 
	while ($row =  $rs->fetch_assoc()) 
	{ 
   ?>
<option value=<?php echo $row['course'];?> >   <?php echo $row['course'];?> 
 </option>
   <?php        
   }
   ?>                             
  </select> 
</div>				 	
 <div class="form-group">
 <label for="stuname">Student Name:</label>
      <input type="text" class="form-control" id="name" name="name" required>
       </div>
      <div class="form-group">
      <label for="email">Email:</label>
       <input type="email" class="form-control" id="email" name="email" required>
         </div>
        <div class="form-group">
        <label for="age">Age:</label>
         <input type="number" class="form-control" id="age" name="age" required>
        </div>
         <button type="submit" class="btn btn-success">Submit</button>
        </form>
        <div id="result"></div>
    </div>

 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script>
   $(document).ready(function() {
   $("#studentForm").submit(function(e) {
    e.preventDefault();
                
        $.ajax({
            type: "POST",
             url: "insertstudent.php",
           data: $(this).serialize(),
           success: function(res) {
           $("#result").html(res);
              }
                });
            });
        });
    </script>
 
<script type="text/javascript">
$(document).ready(function(){
 $('#program').on('change',function(){
        var program= $(this).val();
      if(program){
         $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'program='+program,
              success:function(res){
				   
			data= res.split("#");
       $('#course').html(data[0]);
	$('#program_dtls').html(data[1]);
             }
            });
	 } 		
	  });					
   });   
 </script> 
</body>
</html>
