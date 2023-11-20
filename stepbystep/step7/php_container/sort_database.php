<?php

include 'sort.php';

include 'database.php';

?>
<?php     
echo '<h1>MySql Persons Table:</h1>';
$result = getPersons();
$ages = array();
while($record = mysqli_fetch_assoc($result))
{
    echo '<h2>'.$record['Lastname'].'</h2>';
    echo '<p>'.$record['Firstname'].' - '.$record['age'].'</p>';
    echo '<hr>';
    $ages[] = $record['age'];
}
foreach ($ages as $age) {
    echo $age."<br>";
}
$sortedNumbers = bubbleSort($ages);
echo "<h3>Sorted with Bubblesort:</h3>";
echo implode(" ", $sortedNumbers);
$sortedNumbers = quickSort($ages);
echo "<h3>Sorted with Quicksort:</h3>";
echo implode(" ", $sortedNumbers);
?>



