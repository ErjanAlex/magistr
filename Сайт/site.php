<!DOCTYPE html>
<html>
<head>

</head>
<body>


<h1> в php выполняется загрузка из бд</h1>


<?php
require_once 'connect.php'; // подключаем скрипт
 
// подключаемся к серверу 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
// выполняем запрос sql пишпи сюда запрос sql как в access
     $query ="SELECT * FROM Microclimate.Light";
$result = mysqli_query($link, $query);
if($result)
{

	$rows = mysqli_num_rows($result); // количество полученных строк
	for ($i = 0 ; $i < $rows ; ++$i)//вывод таблицы
    {
        $row = mysqli_fetch_row($result);//номер строки

        echo "$row[0] ";
        echo "<br>";

        echo "$row[1]";
           echo "<br>";

        echo "$row[2]";
           echo "<br>";

        echo "$row[3]";
           echo "<br>";

 
         
    }
 mysqli_free_result($result);
    //echo "Выполнение запроса прошло успешно";
}
 
// закрываем подключение
mysqli_close($link);
?>


<h1>здесь дальше выполняется обычный html</h1>


</body>
</html>