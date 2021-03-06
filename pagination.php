<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;500&display=swap" rel="stylesheet">
</head>

<body>

    <div class="container">
        <table>
            <tr>
                <th>ID</th>
                <th>Author</th>
                <th>Title</th>
                <th>Date</th>
            </tr>
            <?php 
                $con = mysqli_connect('localhost', 'root', '', 'blog');
                $limit = 5;

                if(isset($_GET['page'])){
                    $page = $_GET['page'];
                }else{
                    $page = 1;
                }

                $offset = ($page - 1) * $limit;
                $sql = "SELECT * from posts LIMIT $offset, $limit";
                $res = mysqli_query($con, $sql);
                while($row = mysqli_fetch_assoc($res)){
                    
                
            ?>

            <tr>
                <td><?php echo $row['id'] ?></td>
                <td><?php echo $row['author'] ?></td>
                <td><?php echo $row['title'] ?></td>
                <td><?php echo $row['created_at'] ?></td>
            
            </tr>

            <?php } ?>
            
        </table>
        
        <?php
            
            $sql = "SELECT COUNT(*) from posts";
            $res = mysqli_query($con, $sql);
            $total_rows = mysqli_fetch_array($res)[0];
            $total_page = ceil($total_rows / $limit);
        ?>

        <ul class="pagination">
            <a class="nav-link-left nav-link" href="?page=1"><i class="fas fa-angle-double-left"></i></a>
            <a class="nav-link" href="<?php if($page <= 1){echo '#';}else{echo "?page=".$page -1;} ?>"><i class="fas fa-caret-left"></i></a>
            <?php 
                for($i = 1; $i <= $total_page; $i++){
                    if($page == $i){
                        echo "<a class='active links' href='?page=$i'>".$i."</a>";
                    }else{
                        echo "<a class='links' href='?page=$i'>".$i."</a>";
                    }
                }
            ?>
            <a class="nav-link" href="<?php if($page == $total_page ){echo '#';}else{echo "?page=".$page + 1;} ?>"><i class="fas fa-caret-right"></i></a>
            <a class="nav-link-right nav-link" href="?page=<?php echo $total_page;?>"><i class="fas fa-angle-double-right"></i></a>
        
        </ul>

        <form action="pagination.php" method="GET">
            <select name="page" onchange="this.form.submit()">
                <?php 
                    echo "<option value='$page'>Active:".$page."</option>";
                    for($i = 1; $i <= $total_page; $i++){
                        echo "<option value='$i'>".$i."</option>";
                    }
                ?>
            </select>
        </form>
    </div>

</body>
</html>