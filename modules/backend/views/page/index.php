<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Manage Pages';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="page-index">
    <p>
        <?= Html::a('Create Page', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?=
    GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'title',
            'alias',
            'published',
            [
                'class' => 'yii\grid\ActionColumn',
				'template' => '{update} {delete}',
                'contentOptions' => ['width' => '70px'],
                'buttons' => [
                    'delete' => function($url, $model) {
                        $del = Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                    'title' => Yii::t('yii', 'Delete'),
                                    'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                    'data-method' => 'post',
                                    'data-pjax' => '0',
                        ]);
                        return (in_array($model->id, [1, 2, 3]) ? false : $del);
                    }
                        ],
                    ],
                ],
            ]);
            ?>

</div>
