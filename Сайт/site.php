<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<title>Комплекс</title>
</head>
<body>
<div class="header">
<h1>Программно-аппаратный комплекс удалённого контроля отдельных параметров микроклимата помещений.</h1>
</div>


<script type="text/javascript">
function clock() {
var d = new Date();
var month_num = d.getMonth()
var day = d.getDate();
var hours = d.getHours();
var minutes = d.getMinutes();
var seconds = d.getSeconds();

month=new Array("января", "февраля", "марта", "апреля", "мая", "июня",
"июля", "августа", "сентября", "октября", "ноября", "декабря");

if (day <= 9) day = "0" + day;
if (hours <= 9) hours = "0" + hours;
if (minutes <= 9) minutes = "0" + minutes;
if (seconds <= 9) seconds = "0" + seconds;

date_time = "Сегодня - " + day + " " + month[month_num] + " " + d.getFullYear() +
" г.&nbsp;&nbsp;&nbsp;Текущее время - "+ hours + ":" + minutes + ":" + seconds;
if (document.layers) {
 document.layers.doc_time.document.write(date_time);
 document.layers.doc_time.document.close();
}
else document.getElementById("doc_time").innerHTML = date_time;
 setTimeout("clock()", 1000);
}
</script>

<span id="doc_time">
 Дата и время
</span>

<script type="text/javascript">
 clock();
</script>



















<h2>Таблица текущей освещенности помещений</h2>


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
	echo "<table>";
	echo "<tr>";

	echo "<th>";
	echo "№ Arduino";
	echo "</th>";

	echo "<th width=200>";
	echo "Освещенность";
	echo "</th>";

	echo "<th>";
	echo "Время последнего обновления";
	echo "</th>";

	echo "<th width=200>";
	echo "Номер аудитории ";
	echo "</th>";

	echo "</tr>";



	for ($i = $rows-3 ; $i < $rows ; ++$i)//вывод таблицы
    {
        $row = mysqli_fetch_row($result);//номер строки

        echo "<tr>";

        echo "<td>";
        echo "$row[0] ";
         echo "</td>";

         echo "<td>";
        echo "$row[1]";
        echo "</td>";

         echo "<td>";
        echo "$row[2]";
         echo "</td>";

          echo "<td>";
        echo "$row[3]";
          echo "</td>";

         echo "</tr>";

 
         
    }
    echo "</table>";
 mysqli_free_result($result);
    //echo "Выполнение запроса прошло успешно";
}
 
// закрываем подключение
mysqli_close($link);
?>



<br>
<h2>Таблица текущей влажности помещений </h2>





<?php
require_once 'connect.php'; // подключаем скрипт
 
// подключаемся к серверу 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
// выполняем запрос sql пишпи сюда запрос sql как в access
     $query ="SELECT * FROM Microclimate.Humidity";
$result = mysqli_query($link, $query);
if($result)
{

	$rows = mysqli_num_rows($result); // количество полученных строк
	echo "<table>";
	echo "<tr>";

	echo "<th>";
	echo "№ Arduino";
	echo "</th>";

	echo "<th width=200>";
	echo "Влажность";
	echo "</th>";

	echo "<th>";
	echo "Время последнего обновления";
	echo "</th>";

	echo "<th width=200>";
	echo "Номер аудитории";
	echo "</th>";

	echo "</tr>";



	for ($i = $rows-3 ; $i < $rows ; $i++)//вывод таблицы
    {
        $row = mysqli_fetch_row($result);//номер строки

        echo "<tr>";

        echo "<td>";
        echo "$row[0] ";
         echo "</td>";

         echo "<td>";
        echo "$row[1]";
        echo "</td>";

         echo "<td>";
        echo "$row[2]";
         echo "</td>";

          echo "<td>";
        echo "$row[3]";
          echo "</td>";

         echo "</tr>";

 
         
    }
    echo "</table>";
 mysqli_free_result($result);
    //echo "Выполнение запроса прошло успешно";
}
 
// закрываем подключение
mysqli_close($link);


?>

<br>

<br>
<h2>Таблица истории влажности помещений </h2>





<?php
require_once 'connect.php'; // подключаем скрипт
 
// подключаемся к серверу 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
// выполняем запрос sql пишпи сюда запрос sql как в access
     $query ="SELECT * FROM Microclimate.HumidityHistory";
$result = mysqli_query($link, $query);
if($result)
{

	$rows = mysqli_num_rows($result); // количество полученных строк
	echo "<table>";
	echo "<tr>";

	echo "<th>";
	echo "ID";
	echo "</th>";

	echo "<th width=200>";
	echo "Влажность";
	echo "</th>";

	echo "<th>";
	echo "Время обновления";
	echo "</th>";

	echo "<th width=200>";
	echo "Номер аудитории";
	echo "</th>";

	echo "</tr>";



	for ($i = 0 ; $i < $rows ; $i++)//вывод таблицы
    {
        $row = mysqli_fetch_row($result);//номер строки

        echo "<tr>";

        echo "<td>";
        echo "$row[0] ";
         echo "</td>";

         echo "<td>";
        echo "$row[1]";
        echo "</td>";

         echo "<td>";
        echo "$row[2]";
         echo "</td>";

          echo "<td>";
        echo "$row[3]";
          echo "</td>";

         echo "</tr>";

 
         
    }
    echo "</table>";
 mysqli_free_result($result);
    //echo "Выполнение запроса прошло успешно";
}
 
// закрываем подключение
mysqli_close($link);


?>

<br>

<br>
<h2>Таблица истории освещенности помещений </h2>





<?php
require_once 'connect.php'; // подключаем скрипт
 
// подключаемся к серверу 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
// выполняем запрос sql пишпи сюда запрос sql как в access
     $query ="SELECT * FROM Microclimate.LightHistory";
$result = mysqli_query($link, $query);
if($result)
{

	$rows = mysqli_num_rows($result); // количество полученных строк
	echo "<table>";
	echo "<tr>";

	echo "<th>";
	echo "ID";
	echo "</th>";

	echo "<th width=200>";
	echo "Освещенность";
	echo "</th>";

	echo "<th>";
	echo "Время обновления";
	echo "</th>";

	echo "<th width=200>";
	echo "Номер аудитории";
	echo "</th>";

	echo "</tr>";



	for ($i = 0 ; $i < $rows ; $i++)//вывод таблицы
    {
        $row = mysqli_fetch_row($result);//номер строки

        echo "<tr>";

        echo "<td>";
        echo "$row[0] ";
         echo "</td>";

         echo "<td>";
        echo "$row[1]";
        echo "</td>";

         echo "<td>";
        echo "$row[2]";
         echo "</td>";

          echo "<td>";
        echo "$row[3]";
          echo "</td>";

         echo "</tr>";

 
         
    }
    echo "</table>";
 mysqli_free_result($result);
    //echo "Выполнение запроса прошло успешно";
}
 
// закрываем подключение
mysqli_close($link);


?>

<br>

<form method="post">
    <input type="submit" name="test" id="test" value="Обновить таблицы" /><br/>
</form>

<?php

function testfun()
{
   header('Location: http://alx.hldns.ru/microclimate/site.php');
}

if(array_key_exists('test',$_POST)){
   testfun();
}

?>


<div class="footer">
	<p>2020г.</p>
	<p>bobin-1998@mail.ru</p>

</div>

</body>
</html>