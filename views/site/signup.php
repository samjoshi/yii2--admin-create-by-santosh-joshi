<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;
?>
<section class="login">
    
    
    <div class="container">
        <div class="row">
            
            <div class="col-md-3 col-sm-2">
            </div>
            
            <div class="col-md-6 col-sm-8">
                <div class="register-box">

                    <div class="top-corner-box"></div>
                    <div class="icon-img-right">  <img src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/images/reguster.png"></div>
                    <div class="login-title"><?= Html::encode($this->title) ?> </div>
                     
                    <?php $form = ActiveForm::begin(['id' => 'signup-create-form',
                    'options' => ['enctype' => 'multipart/form-data'],]); ?>
                    <div class="login-inner-box">
                   <?= $form->field($profile, 'first_name')->textInput(['placeholder' => $model->getAttributeLabel('first_name')])->label(false) ?>
                    <?= $form->field($profile, 'last_name')->textInput(['placeholder' => $model->getAttributeLabel('last_name')])->label(false) ?>
                    <?= $form->field($model, 'username')->textInput(['placeholder' => $model->getAttributeLabel('username')])->label(false) ?>
                    <?= $form->field($model, 'email')->textInput(['placeholder' => $model->getAttributeLabel('email')])->label(false) ?>
                    <?= $form->field($model, 'password')->passwordInput(['placeholder' => $model->getAttributeLabel('password')])->label(false) ?>
                    <?= $form->field($model, 'verifyPassword')->passwordInput(['placeholder' => $model->getAttributeLabel('verifyPassword')])->label(false) ?>
                   <?= $form->field($model, 'aggrement')->checkbox(array('label'=>'I accept the terms and conditions')); ?>

                    </div>
                    <div class="login-reg-box">
                    <?= Html::submitButton('Signup', ['class' => ' btn-signup', 'name' => 'signup-button']) ?>
                    </div>
                    <div class="top-corner-box"></div>
                    <?php ActiveForm::end(); ?>
                </div>

            </div>
            
            <div class="col-md-3 col-sm-2">
               
                
            </div>
            
            
        </div>
        
    </div>
</section>