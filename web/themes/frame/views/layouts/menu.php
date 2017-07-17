<?php

yii\bootstrap\NavBar::begin([
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
yii\bootstrap\NavBar::end();
?>