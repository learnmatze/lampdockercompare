<?php

// Using include
include 'sort.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["numbers"]) && isset($_POST["algorithm"])) {
        $inputNumbers = $_POST["numbers"];
        $selectedAlgorithm = $_POST["algorithm"];

        $numbersArray = explode(" ", $inputNumbers);
        $numbersArray = array_map('intval', $numbersArray);

        if ($selectedAlgorithm == "bubblesort") {
            $sortedNumbers = bubbleSort($numbersArray);
        } elseif ($selectedAlgorithm == "quicksort") {
            $sortedNumbers = quickSort($numbersArray);
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sort Algorithms</title>
</head>
<body>
    <h2>Sort Algorithms</h2>
    <form method="post" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
        <label for="numbers">Enter a list of numbers (separated by spaces): </label>
        <input type="text" name="numbers" id="numbers" required>
        <br>
        <br>
        <label for="algorithm">Select a sorting algorithm: </label>
        <select name="algorithm" id="algorithm">
            <option value="bubblesort">Bubble Sort</option>
            <option value="quicksort">Quick Sort</option>
        </select>

        <button type="submit">Sort</button>
    </form>

    <?php
    if (isset($sortedNumbers)) {
        echo "<h3>Sorted Numbers:</h3>";
        echo implode(" ", $sortedNumbers);
    }
    ?>
</body>
</html>
