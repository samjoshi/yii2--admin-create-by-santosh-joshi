<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CharityCategorySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Charity Categories';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="charity-category-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Charity Category', ['create'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Sort Charity Category', ['sort'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            //'parent_id',
            'cat_name',
            'alias',
            
            [
            'attribute' => 'beneficiaries',
           // 'filter'=>$status,
            'value'=>function($model){
                return ($model->beneficiaries == 1)?'Yes':'No';
            },
             'filter' => Html::dropDownList('CharityCategorySearch[beneficiaries]', $searchModel->beneficiaries,$beneficiaries, ['class' => 'form-control', 'prompt' => 'Select Any']),
           ],
            [
            'attribute' => 'published',
           // 'filter'=>$status,
            'value'=>function($model){
                return ($model->published == 1)?'Active':'Inactive';
            },
             'filter' => Html::dropDownList('CharityCategorySearch[published]', $searchModel->published,$status, ['class' => 'form-control', 'prompt' => 'Select Any']),
           ],
            // 'sort_order',
            // 'published',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
