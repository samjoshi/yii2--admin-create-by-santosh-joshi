<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form">

    <?php
    $form = ActiveForm::begin([
                'id' => 'signup-create-form',
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
    ]);
    ?>

    <?= $form->errorSummary([$model,$profile]); ?>
    

    <?= $form->field($profile, 'first_name')->textInput() ?>
    <?= $form->field($profile, 'last_name')->textInput() ?>
    <?= $form->field($model, 'username') ?>
    <?= $form->field($model, 'email') ?>        
    <?php if ($profile->isNewRecord) { ?>
        <?= $form->field($model, 'password')->passwordInput(); ?>
        <?= $form->field($model, 'verifyPassword')->passwordInput(); ?>         
    <?php } ?>
    
    <?php //echo $form->field($profile, 'image')->fileInput(['class' => 'form-control']) ?>
    <?php
    if ($profile && $profile->image != '') {
        echo "<div class='row'><div class='col-lg-2'></div><div class='col-lg-10'>";
        echo Html::img(\yii\helpers\Url::to(['/images/profile/' . $profile->image], true), ['class' => 'img-thumbnail', 'width' => 100]) . '<br/><br/>';
        echo "</div></div>";
    }
    ?>
    <div class="form-group">
        <?= "<div class='row'><div class='col-lg-2'></div><div class='col-lg-10'>"; ?>
        <?= Html::submitButton($profile->isNewRecord ? 'Create' : 'Update', ['class' => $profile->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <?= Html::button('Cancel', ['class' => 'btn btn-danger', 'onclick' => 'window.location.href="'.\yii\helpers\Url::to(['/backend/user/index'],true).'"']) ?>
        <?= "</div></div>"; ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>
