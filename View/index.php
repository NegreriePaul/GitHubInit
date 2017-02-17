<?php
/**
 * Created by PhpStorm.
 * User: paulnegrerie
 * Date: 14/02/2017
 * Time: 09:33
 */
/*require 'inc/header.php';
session_start();
require "conf.inc.php";
//autoloader va inclure les fichiers necessaire seulement eux, rend les require dynamique (inclu les class qu'on veut instancier)

spl_autoload_register( function ($class) {
    if (file_exists('core/'.$class. '.class.php')){
        require 'core/'.$class.'.class.php';
    }elseif (file_exists('models/'.$class. '.class.php')){
        require 'models/'.$class.'.class.php';
    }


});*/


require 'inc/header.php' ?>

<?php if (empty($this->oPosts)): ?>
    <p class="bold">There is no Blog Post.</p>
    <p><button type="button" onclick="window.location='<?=ROOT_URL?>?p=blog&amp;a=add'" class="bold">Add Your First Blog Post!</button></p>
<?php else: ?>

    <?php foreach ($this->oPosts as $oPost): ?>
        <h1><a href="<?=ROOT_URL?>?p=blog&amp;a=post&amp;id=<?=$oPost->id?>"><?=htmlspecialchars($oPost->title)?></a></h1>

        <p><?=nl2br(htmlspecialchars(mb_strimwidth($oPost->body, 0, 100, '...')))?></p>
        <p><a href="<?=ROOT_URL?>?p=blog&amp;a=post&amp;id=<?=$oPost->id?>">Want to see more?</a></p>
        <p class="left small italic">Posted on <?=$oPost->createdDate?></p>

        <?php require 'inc/control_buttons.php' ?>
        <hr class="clear" /><br />
    <?php endforeach ?>

<?php endif ?>

<?php require 'inc/footer.php' ?>



