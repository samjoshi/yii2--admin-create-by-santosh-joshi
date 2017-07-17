<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Manage Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">
     <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <!--<p>
        <?= Html::a('Create User', ['create'], ['class' => 'btn btn-success']) ?>
    </p>-->

    <?=
    GridView::widget([
        'dataProvider' => $dataProvider,
         'filterModel' => $searchModel, 
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            /*[
                'label' => 'Image',
                'format' => 'raw',
                'value' => function($data) {
                    return Html::img(\yii\helpers\Url::to(['/images/profile/' . $data->profile->image], true), ['width' => 100, 'class' => 'img-thumbnail']);
                },
                    ],*/
                    [
            'label' => 'First Name',
            'attribute'=>'first_name',
             //'filter'=>app\models\ProductCategory::getAllCategories(),
            'format'=>'raw',//raw, html
            'value'=>'profile.first_name'
            ],
                    'username',
                    'email:email',
                    [
                        'class' => 'yii\grid\ActionColumn',
                        'template' => '{update} {delete} {block-user}',
                        'contentOptions' => ['width' => '150px'],
                        'buttons' => [
                            'delete' => function($url, $model) {
                                $del = Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                            'title' => Yii::t('yii', 'Delete'),
                                            'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                            'data-method' => 'post',
                                            'data-pjax' => '0',
                                ]);
                                return (in_array($model->id, [1]) ? false : $del);
                            },
                            'block-user' =>  function ($url, $model) {
                            return $model->status == 0 ? Html::a('<span class="glyphicon glyphicon-ban-circle icon-oval"></span>', $url, [
                            'title' => Yii::t('yii', 'Unblock User'),
                            'data-confirm' => Yii::t('yii', 'Are you sure you want to unblock this User ?'),
                            ]) :
                            Html::a('<span class="glyphicon glyphicon-ok icon-oval"></span>', $url, [
                            'title' => Yii::t('yii', 'Block User'),
                            'data-confirm' => Yii::t('yii', 'Are you sure you want to block this User ?'),
                            ]);
                            },
                                ],
                            ],
                            //['class' => 'yii\grid\ActionColumn'],
                        ],
                    ]);
                    ?>

</div>
