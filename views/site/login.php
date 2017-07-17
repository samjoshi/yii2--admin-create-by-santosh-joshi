<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<section class="login">
  
  
  <div class="container">
  <div class="row">
  
  <div class="col-md-3 col-sm-2">
   </div>
  
    <div class="col-md-6 col-sm-8">
        <div class="login-box">
            <div class="top-corner-box"></div>
            <div class="icon-img-right">  <img src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/images/login.png"></div>
            <div class="login-title">Log in  </div>
            <div class="login-inner-box"> 
            <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
 <?= $form->field($model, 'username')->textInput(['placeholder' => $model->getAttributeLabel('username')])->label(false) ?>
<?= $form->field($model, 'password')->passwordInput(['placeholder' => $model->getAttributeLabel('password')])->label(false) ?>
            <?= $form->field($model, 'rememberMe')->checkbox() ?>
             <div class="bottom-login-box">
            <!-- Forgot your password? <?php //echo Html::a('reset it', ['site/request-password-reset']) ?>    -->       
            
            <?= Html::submitButton('Login', ['class' => 'login-reg-box', 'name' => 'login-button']) ?>
            </div>
            <?php ActiveForm::end(); ?>           

        </div>
   <!-- <div class="login-reg-box"><a href="<?php echo Yii::$app->urlManager->createUrl(['/site/signup']); ?>">Register</a></div> -->

 <div class="top-corner-box"></div>
  </div>
   </div>
    <div class="col-md-3 col-sm-2">  
  </div>
  </div>
  </div>

  </section>
<?php /*echo yii\authclient\widgets\AuthChoice::widget([
    'baseAuthUrl' => ['site/auth'],
    'popupMode' => false,
])*/
?>
