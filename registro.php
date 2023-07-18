<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los datos del formulario
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $telefono = $_POST['telefono'];
    $producto = $_POST['producto'];

    // Realizar las operaciones de guardado en la base de datos aquí
    // Puedes utilizar consultas SQL o algún ORM (Mapeo Objeto-Relacional)

    // Ejemplo de consulta SQL utilizando MySQLi
    $conexion = new mysqli('localhost', 'usuario', 'contraseña', 'basededatos');
    if ($conexion->connect_error) {
        die('Error de conexión: ' . $conexion->connect_error);
    }

    $sql = "INSERT INTO clientes (nombre, email, telefono, producto) VALUES ('$nombre', '$email', '$telefono', '$producto')";

    if ($conexion->query($sql) === TRUE) {
        echo "Los datos se guardaron correctamente.";
    } else {
        echo "Error al guardar los datos: " . $conexion->error;
    }

    $conexion->close();
    exit; // Termina la ejecución después de procesar el formulario
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Formulario de ingreso</title>
</head>
<body>
    <h2>Formulario de ingreso de clientes o productos</h2>
    <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="telefono">Teléfono:</label>
        <input type="text" id="telefono" name="telefono" required><br><br>
        
        <label for="producto">Producto:</label>
        <input type="text" id="producto" name="producto" required><br><br>
        
        <input type="submit" value="Guardar">
    </form>
</body>
</html>
