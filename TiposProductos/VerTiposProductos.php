<!DOCTYPE html>
<html>
    <head>
        <title>Abarrotes - Tipos de Productos</title>
        <meta charset="utf-8">
    </head>
    <body>
        <section>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Descripcion</th>
                    <th>Operaciones</th>
                </tr>
                <?php
                    include_once '../Conexion.php';
                    $mysqli = new mysqli($hostdb, $usuariodb, $clavedb, $basededatos);
                    if($mysqli -> connect_errno){
                        die("Error de Conexion" . $mysqli -> mysql_connect);
                    } else {
                        $sql_query = "SELECT * FROM TiposProductos";
                        $resultado = $mysqli -> query ($sql_query);
                        while ($row = $resultado -> fetch_assoc())
                        {
                            ?>
                            <tr>
                                <td><?php echo $row["Id"];?></td>
                                <td><?php echo $row["Descripcion"];?></td>
                                <td><img src="../Images/Editar.png"></td>
                                <td><img src="../Images/Cancelar.png"></td>
                            </tr>   
                            <?php
                        }
                    }
                ?>
                <!--<tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>-->
            </table>
        </section>
    </body>
</html>


html>(head>title{Abarrotes - Tipos de Prodcutos}+meta[charset="utf-8"])+body>section#Identificador.Class>table(tr>th{ID}+th{Descripcion}+th{Cancelar})+(tr>td+td+(td>img[src="../Images/Editar.png"])+(td>img[src="../Images/Cancelar.png"]))