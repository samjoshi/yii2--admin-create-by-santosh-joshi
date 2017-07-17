<?php

/*yii\bootstrap\NavBar::begin([
    'brandLabel' => Yii::$app->name,
    'brandUrl' => Yii::$app->urlManager->createAbsoluteUrl(['/']),
    'options' => [
        'class' => 'navbar-default navbar-fixed-top',
    ],
]);
echo \yii\bootstrap\Nav::widget([
    'options' => ['class' => 'navbar-nav'],
    'items' => [
        ['label' => 'Home', 'url' => Yii::$app->homeUrl],
        ['label' => 'About Us', 'url' => ['/about-us']],
        ['label' => 'Contact Us', 'url' => ['/contact']],   
        ['label' => 'Signup', 'url' => array('/signup'), 'visible' => Yii::$app->user->isGuest],
        Yii::$app->user->isGuest ? ['label' => 'Login', 'url' => array('/login')] :
                [
            'label' => ucfirst(Yii::$app->user->identity->username),
            'visible' => !Yii::$app->user->isGuest,
            'url' => ['#'],
            'items' => [
                ['label' => 'My Profile', 'url' => ['/userprofile/index'], 'visible' => !Yii::$app->user->isGuest],
                ['label' => 'Change Password', 'url' => ['/userprofile/changepassword'], 'visible' => !Yii::$app->user->isGuest],
                ['label' => 'Backend', 'url' => ['/backend/default/index'], 'visible' => key_exists("Super Admin", Yii::$app->getAuthManager()->getRolesByUser(Yii::$app->user->identity->id))],
                ['label' => 'GII', 'url' => ['/gii'], 'visible' => key_exists("Super Admin", Yii::$app->getAuthManager()->getRolesByUser(Yii::$app->user->identity->id))],
                ['label' => 'Logout', 'url' => ['/logout'], 'linkOptions' => ['data-method' => 'post']],
            ],
                ],
    ],
]);
yii\bootstrap\NavBar::end();*/
?>
<header>
  <div class="container-fluid">
    <div class="row">
      <div class="logo col-md-2 col-sm-3 col-xs-4"><a href="<?php echo Yii::$app->urlManager->createUrl(['/']); ?>"><img src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/images/logo.png"></a></div>
      <div class="col-md-10  col-sm-9 col-xs-8">
        <div class="top-manu-box">
        <?php if (isset(Yii::$app->user->id)) { ?>
          <a href="<?php echo Yii::$app->urlManager->createUrl(['/site/logout']); ?>" class="btn button header-but">Logout</a>
         <?php } else { ?>
          <a href="<?php echo Yii::$app->urlManager->createUrl(['/site/login']); ?>" class="btn button header-but">Login</a>
         <?php } ?>
           <a href="<?php echo Yii::$app->urlManager->createUrl(['/site/signup']); ?>" class="btn button header-but">SIGN UP</a>
          
          <div class="nav1">
            <ul class="navbar-nav1">
              <li class="active"><a href="#">Volunteer</a></li>
              <li><a href="#">Donate</a></li>
              <li><a href="#">Find Charity</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>