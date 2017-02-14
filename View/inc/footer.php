<?php
/**
 * Created by PhpStorm.
 * User: paulnegrerie
 * Date: 13/02/2017
 * Time: 11:31
 */
?>

<footer>
    <p class="italic"><strong><a href="<?=ROOT_URL?>" title="Homepage">Simple Blog</a></strong> created for a exam &nbsp; | &nbsp;
        <?php if (!empty($_SESSION['is_logged'])): ?>
            You are connected as Admin - <a href="<?=ROOT_URL?>?p=admin&amp;a=logout">Logout</a> &nbsp; | &nbsp;
            <a href="<?=ROOT_URL?>?p=blog&amp;a=all">View All Blog Posts</a>
        <?php else: ?>
            <a href="<?=ROOT_URL?>?p=admin&amp;a=login">Backend Login</a> <!--pareil que dans le header const pas declarer encore-->
        <?php endif ?>
    </p>
</footer>
</div>
</body>
