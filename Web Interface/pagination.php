<?php
$query = "SELECT COUNT(*) as  count FROM $table";
$row = sqlQuery($query);
$row = $row[0];
$pages = ceil($row['count'] / $limit);
if($page>=$pages-1) $page=$pages;
if($page-1<0) $page=1;

?>
<p>Number of records:<span style="color:#c00;"> <?php echo $row['count']; ?></span></p>
      <ul style="margin-top:0;" class="pagination  pagination-sm" pages="<?php echo  $pages ?>">
        <li><a href="?page=<?php echo $page-1 ?>"><</a></li>
          <?php
          for ($i = 1; $i <= ceil($row['count'] / $limit); $i++) {
            if($i==$page) $class =  'active';
            if($i<20)
            echo "\n" . '<li class="'.$class.'"><a href="?page='.$i.'">' . $i . '</a></li>';
            else if($i==20)
             echo "\n" . '<li><a href="?page='.$i.'">' . '...' . '</a></li>';
             else ;
             $class="";
          }
          ?>
          <li><a href="?page=<?php echo $page+1; ?>">></a></li>
      </ul>
