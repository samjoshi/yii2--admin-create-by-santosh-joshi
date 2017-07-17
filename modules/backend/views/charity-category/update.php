<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\CharityCategory */

$this->title = 'Update Charity Category: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Charity Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="charity-category-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
