<?php
/**
 * Created by PhpStorm.
 * User: paulnegrerie
 * Date: 14/02/2017
 * Time: 09:35
 */
?>
<?php if (!empty($this->sErrMsg)): ?>

    <p class="error"><?=$this->sErrMsg?></p>

<?php endif ?>

<?php if (!empty($this->sSuccMsg)): ?>

    <p class="success"><?=$this->sSuccMsg?></p>

<?php endif ?>


