<?php
function getPersons()
{
    $connect = mysqli_connect(
        'db',
        'lamp_user',
        'password',
        'lamp_docker_compose'
    );
    
    $query = 'Select * from Persons';
    $result = mysqli_query($connect, $query);
    return $result;
}

?>