<?php
// Conexión a la base de datos
$servername = id21041441_ferreteria
$username = id21041441_krlostz
$password = Ickkck1%
$dbname = localhost

$conn = new mysqli($servername, $username , $password , $dbname );

// Verificación de la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Consulta para obtener los nombres de los productos y sus precios
$sql = "SELECT nombre, precio FROM productos";
$result = $conn->query($sql);

// Verificación de los resultados y muestra de los datos
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Nombre: " . $row["nombre"]. " - Precio: $" . $row["precio"]. "<br>";
    }
} else {
    echo "No se encontraron resultados.";
}

// Cierre de la conexión
$conn->close();
?>
