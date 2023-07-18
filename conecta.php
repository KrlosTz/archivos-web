<?php
// declarar las variables en donde se guardaran los valores de la conexión
$servidor = "localhost";
$usuario = "id21048188_database";
$password = "Database1%";
$bd = "id21048188_database";
$conecta = mysqli_connect($servidor, $usuario,$password,$bd);
if($conecta->connect_error){
  die("Error al conectar la base de datos de la pagina".$conecta->connect_error);
}
?>
<?php
// Incluir el archivo 'conecta.php'
include 'includes/conecta.php';

// Verificar si se ha enviado una búsqueda
if (isset($_GET['search'])) {
    $search = $_GET['search'];
    // Realiza alguna acción con el valor de búsqueda, como buscar en la base de datos
    // ...
    // Supongamos que tienes una tabla "herramientas" con un campo "nombre"
    // Ejemplo de consulta utilizando MySQLi
    $query = "SELECT * FROM herramientas WHERE nombre LIKE '%$search%'";
    $result = mysqli_query($conn, $query);

    // Verificar si se encontraron resultados
    if (mysqli_num_rows($result) > 0) {
        echo "<h2>Resultados de la búsqueda:</h2>";
        while ($row = mysqli_fetch_assoc($result)) {
            // Mostrar el resultado
            echo "<p>".$row['nombre']."</p>";
        }
    } else {
        echo "<p>No se encontraron resultados para la búsqueda: $search</p>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Busqueda de herramientas</title>
    <style>
        /* Estilos CSS para el diseño */
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .search-form {
            display: flex;
        }
        .search-input {
            flex-grow: 1;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
        }
        .search-button {
            padding: 10px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Busqueda de herramientas</h1>
        <form class="search-form" method="GET" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <input class="search-input" type="text" name="search" placeholder="Ingrese el nombre de la herramienta">
            <button class="search-button" type="submit">Buscar</button>
        </form>
    </div>
</body>
</html>
