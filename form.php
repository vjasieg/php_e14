<?php
    if(ISSET($_POST["imie"]) && ISSET($_POST["nazwisko"]) && ISSET($_POST["tytul"]) && ISSET($_POST["year"]) && $_POST["imie"] != '' && $_POST["nazwisko"] != '' && $_POST["tytul"] != '' && $_POST["year"] != '') {
        $con = mysqli_connect("localhost", "root", "", "matematycy");
        $query = mysqli_query($con, "INSERT INTO matematycy VALUES (null, '".$_POST["imie"]."', '". $_POST["nazwisko"]."')");
        $imie = $_POST["imie"];
        $nazwisko = $_POST["nazwisko"];
        $tytul = $_POST["tytul"];
        $year = $_POST["year"];
        $query2 = mysqli_query($con, "SELECT id FROM matematycy WHERE imie='$imie' AND nazwisko='$nazwisko'");
        $res = mysqli_fetch_assoc($query2);
        $id = $res["id"];
        $final = mysqli_query($con, "INSERT INTO publikacje VALUES ('$id', '$tytul', '$year')");
        mysqli_close($con);
        echo 'wyslano do bazy';
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Egzamin</title>
</head>
<body>
    <form method="POST" action="/form.php">
        <label for="imie">Imię:</label>
        <input type="text" name="imie" id="imie">
        <label for="nazwisko">Nazwisko:</label>
        <input type="text" name="nazwisko" id="nazwisko">
        <label for="tytul">Tytuł:</label>
        <input type="text" name="tytul" id="tytul">
        <label for="year">Rok wydania:</label>
        <input type="text" name="year" id="year">
        <button type="submit">Submit</button>
    </form>
</body>
</html>