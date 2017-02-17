<?php
/**
 * Created by PhpStorm.
 * User: paulnegrerie
 * Date: 14/02/2017
 * Time: 09:33
 */


require 'inc/header.php';
require 'inc/msg.php'; ?>

    <form action="" method="post">

        <p><label for="title">Title:</label><br />
            <input type="text" name="title" id="title" required="required" />
        </p>

        <p><label for="body">Body:</label><br />
            <textarea name="body" id="body" rows="5" cols="35" required="required"></textarea>
        </p>

        <p><input type="submit" name="add_submit" value="Add" /></p>
    </form>

<?php require 'inc/footer.php'; ?>