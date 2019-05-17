
<?php
$servername = "localhost";
$username = "root";
$password = "qwer123";
$dbname = "time_table";
$check_insert =0;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
    $Save_start = $_POST['Start_time'];
    $Save_End = $_POST['End_time'];
// 입력 테스트 
$str_now = strtotime($Save_start);
$str_target = strtotime($Save_End);
if($str_now > $str_target) {
echo "예약이 잘못 되었습니다. 시작일 보다 끝이 더 빠릅니다";
} 
elseif($str_now == $str_target) {
echo "예약 할수 없습니다.\n ";
} 
else {
echo "예약 가능 \n";
$time_check = "SELECT Start_time,End_time FROM time_table";
$result = $conn->query($time_check);



$sql = "SELECT Start_time,End_time FROM time_table";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        if($Save_start>=$row[Start_time] && $Save_start<=$row[End_time])
        {
            echo "해당 시간에 사용 불가능  ";
                  $check_insert=1;
        
        }
        else
        {
            echo "사용 가능";
        }
        
    }
} 
else {
    echo "0 results";
}
if($check_insert ==0)
{
    $sql = "INSERT INTO time_table VALUES('{$Save_start}','{$Save_End}')"; 
    if ($conn->query($sql) === TRUE)
    {
      echo "New record created successfully";
    }
    else 
    {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
}



$conn->close();
?>
