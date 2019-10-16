<?php
$servername = "localhost";
$username = "root";
$password = "qwer123";
$dbname = "time_table";
$check_insert =0;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
    $Save_start = $_POST['Start_day'];
    $Save_End = $_POST['End_day'];
    $Save_time_start= $_POST['Start_hour'];
    $Save_time_End= $_POST['End_hour'];

echo "check_4";
// 데이터 합치기 
$ReserveStart= new DateTime($Save_start->format('Y-m-d') .' ' .$Save_time_start->format('H:i:s'));
$ReserveEnd= new DateTime($Save_End->format('Y-m-d') .' ' .$Save_time_End->format('H:i:s'));
//echo $Save_End_1;
//echo $Save_time_End;
echo $ReserveStart;
echo "$Save_start";
// 입력 테스트 
$str_now = strtotime($ReserveStart);
$str_target = strtotime($ReserveEnd);
if($str_now > $str_target) {
echo "예약이 잘못 되었습니다. 시작일 보다 끝이 더 빠릅니다";
} 
else {
echo "예약 가능 \n";
$time_check = "SELECT Start_time,End_time,Start_hour, End_hour FROM time_table";
$result = $conn->query($time_check);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $Data_merge_start_1 = new DateTime($row[Start_time]->format('Y-m-d') .' ' .$row[Start_hour]->format('H:i:s'));
        $Data_merge_End_1   = new DateTime($row[End_time]->format('Y-m-d') .' ' .$row[End_hour]->format('H:i:s'));
        $Data_merge_start = strtotime($Data_merge_start_1);
        $Data_merge_End   = strtotime($Data_merge_End_1);
        if($str_now>=$Data_merge_start && $str_target<=$Data_merge_End)
        {
            $check_insert =1;
            echo "데이터 못 들어감 ";
        }
        else if($Data_merge_start>=$str_now && $Data_merge_start<=$str_target)
        {
            $check_insert =1;
            echo "데이터 못 들어감 ";
        }
        else if($Data_merge_End>=$str_now && $Data_merge_End<=$str_target)
        {
            $check_insert =1;
            echo "데이터 못 들어감 ";
        }
        else if ($Data_merge_start>=$str_now && $Data_merge_End<=$str_target)
        {
             $check_insert =1;
            echo "데이터 못 들어감 ";
        }
    }
} 
else {
    echo "0 results";
}
if($check_insert ==0)
{
    $sql = "INSERT INTO time_table VALUES('{$Save_start}','{$Save_End}','{$Save_time_start}','{$Save_time_End}','{$Save_user}')"; 
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