<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\CharityCategory */

$this->title = 'Create Charity Category';
$this->params['breadcrumbs'][] = ['label' => 'Charity Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="charity-category-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
