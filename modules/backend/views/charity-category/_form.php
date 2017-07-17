<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\CharityCategory */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="charity-category-form">

    <?php $form = ActiveForm::begin([
                'id' => 'charity-category-create-form',
                'options' => ['enctype' => 'multipart/form-data'],
                'fieldConfig' => [
                    'template' => "<div class='row'>"
                    . "<div class='col-lg-1'>"
                    . "{label}"
                    . "</div>"
                    . "<div class='col-lg-6'>"
                    . "{input}{error}"
                    . "</div>"
                    . "</div>",
                ]
    ]); ?>

    <?php //echo  $form->field($model, 'parent_id')->textInput() ?>

    <?= $form->field($model, 'cat_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alias')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'beneficiaries')->dropDownList(['1' => 'Yes', '0' => 'No']); ?>

    <?= $form->field($model, 'sort_order')->textInput() ?>   
    <?= $form->field($model, 'published')->dropDownList(['1' => 'Yes', '0' => 'No']); ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
