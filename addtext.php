<?php session_start();
 include 'database.php';
 $text = $_POST['yourtext'];
$row_array = array();
$return_srray= array();
$sql = mysqli_query($con, "INSERT INTO `text`(`text`, `user`) VALUES ('$text','".$_SESSION['uid']."')");

$select= mysqli_query($con, "SELECT * FROM `text` where status='Active' ");
while($row = mysqli_fetch_array($select)){
    $row_array['text']=$row['text'];
    $row_array['uid']=$row['user'];
    
   // print_r($row_array);
    
}
$row_array['process']='202';
//array_push($return_srray,$row_array);
 echo json_encode($row_array);

?>