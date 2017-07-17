<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $signUpFormModel app\models\ContactForm */

$this->title = 'Change Password';
?>

<div class="registration-form clearfix">
    <div class="col-md-6 col-sm-6">
        <h1><?= $this->title ?></h1>
    </div>
    <?php $form = ActiveForm::begin(['id' => 'changepassword-form']); ?>


<div class="register-bg">
    <div class="clearfix">

        
        <div class="col-md-12 col-sm-12">
            <?= $form->field($model, 'password')->passwordInput(); ?>
        </div>

        
        <div class="col-md-12 col-sm-12">
            <?= $form->field($model, 'newpassword',[
                'inputOptions'=>[
                    'placeholder'=>'Password must be between 5 to 8 character',
                  ]
            ])->passwordInput(); ?>
        </div>
 <div class="col-md-12 col-sm-12">
            <?= $form->field($model, 'confirmpassword',[
                'inputOptions'=>[
              'placeholder'=>'Password must be between 5 to 8 character',
                 ]
            ])->passwordInput(); ?>
        </div>

        <div class="col-md-12 col-sm-12">
            <?= Html::submitButton('Change Password', ['class' => 'btn-register pull-right']) ?>
        </div>
    </div>

</div>
   <?php ActiveForm::end(); ?>
    
    
</div>