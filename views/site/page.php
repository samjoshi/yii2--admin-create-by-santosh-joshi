<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
if ($model) {
    $this->title = $model->title;
    $this->params['breadcrumbs'][] = $this->title;
    ?>

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $model->content; ?>
    <?php
} else {
    throw new yii\web\HttpException(404, "Page Not Found");
}