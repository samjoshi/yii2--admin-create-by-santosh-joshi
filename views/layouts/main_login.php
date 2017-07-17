<?php

use yii\helpers\Html;
use yii\widgets\Menu;
use yii\widgets\Breadcrumbs;
use yii\debug\Toolbar;

\app\assets\FrameAsset::register($this);
?>
<?php $this->beginPage(); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo Html::encode($this->title); ?></title>
        <?= Html::csrfMetaTags() ?>
        <meta property='og:site_name' content='<?php echo Html::encode($this->title); ?>' />
        <meta property='og:title' content='<?php echo Html::encode($this->title); ?>' />
        <meta property='og:description' content='<?php echo Html::encode($this->title); ?>' />


        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <?php $this->head(); ?> 
      
  <link href="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/css/bootstrap.css" rel="stylesheet">
<link href="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/css/font-awesome.min.css" rel="stylesheet">
<link href="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/css/stylesheet_main_login.css" rel="stylesheet">
<link rel="stylesheet" href="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/css/owl.carousel.css">
<link rel="stylesheet" href="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/css/slider-top.css">
<link rel="stylesheet" href="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/css/animate.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/js/html5shiv.js"></script>
<script src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/js/html5shiv-printshiv.js"></script>

    </head>

    <body>
        <?php $this->beginBody(); ?>

        <?php include(dirname(__FILE__) . '/menu.php');?>
        <?php 
         $controllerl = Yii::$app->controller;
         $front_page = $controllerl->id.'/'.$controllerl->action->id;
         
       if($front_page == 'site/index') { ?>
        <?php include(dirname(__FILE__) . '/slider.php'); }?>

        <main> 
 <?php if($front_page != 'site/index') { ?>      
 <div class="banner-inner"></div>
<?php }?>

            
                    <?php foreach (Yii::$app->session->getAllFlashes() as $key => $message) { ?>
                        <div class="alert alert-<?php echo $key; ?> ">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <?php
                            if(is_array($message)){
                                foreach($message as $row){
                                    echo $row."<Br/>";
                                }
                            } else {
                                echo $message;
                            }
                            ?>                            
                            
                        </div>
                        <?php
                    }
                    ?>                   


                    <?php echo $content; ?>
             </main>

    
         <?php include(dirname(__FILE__) . '/footer.php');?>
        <?php $this->endBody(); ?>

    </body>
</html>
<?php $this->endPage(); ?>