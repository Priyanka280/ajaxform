<?php session_start(); 
include 'database.php';
 ?>
 <!DOCTYPE html>
<html lang="en">
<head>
  <title>JoomDev</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="form.css">
  <style>
    .container {
    width: 422px!important;
}
.btn{
    padding: 6px 4px;

}
  </style>
</head>
<body>

<div class="container">
  <h2 style="text-align:center">Add Text</h2>
  <form method="post" action="addtext.php" id='textform' name='textform'>
  <div class="col-md-10">
    <textarea class='form-control' placeholder="Enter Your Text" name="yourtext" id='yourtext' required></textarea>
  </div>
  <div class="col-md-2">
    <button class="btn btn-small btn-success">Go</button>
  </div>
  </form>
  
</div>
<div class="container" id='Showtext'>
</div>

<script>
    $(document).ready(function(){
    $('#textform').submit(function(e){
        e.preventDefault();
        
        var form = $(this);
        var actionUrl = form.attr('action');
        
        $.ajax({
            type: "POST",
            url: actionUrl,
            data: form.serialize(),
            success:function(data){
                console.log(data);
                response = $.parseJSON(data);
                //alert(response.process);
                if(response.process=='202'){
                    
                    $("#yourtext").val("");
                    $("#Showtext").html(response.text);
                }


                //alert(data);
                // if(data=='Done'){
                //    $("#yourtext").val("");

                // }

              
            }
        });
    });
});
</script>
</body>
</html>
