<?php

Yii::setAlias('@themes', dirname(__DIR__) . '/web/themes');
$params = require(__DIR__ . '/params.php');

$config = [
    'id' => 'basic',
    'name' => 'Kudos',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'modules' => [
        'admin' => [
            'class' => 'mdm\admin\Module',
            'layout' => 'left-menu',
        ],
        'backend' => [
            'class' => 'app\modules\backend\backend',
        ],
    ],
    'components' => [
        'assetManager' => [
            /* 'bundles' => [
              'yii\web\JqueryAsset' => [
              'js' => []
              ],
              'yii\bootstrap\BootstrapPluginAsset' => [
              'js' => []
              ],
              'yii\bootstrap\BootstrapAsset' => [
              'css' => [],
              ],
              ], */
            'linkAssets' => false,
            'appendTimestamp' => true,
        ],
        'authClientCollection' => [
            'class' => 'yii\authclient\Collection',
            'clients' => [
                'facebook' => [
                    'class' => 'yii\authclient\clients\Facebook',
                    'clientId' => '133216743751420',
                    'clientSecret' => 'cd13b1474a9503406133636430086b9d',
                ],
                'github' => [
                    'class' => 'yii\authclient\clients\GitHub',
                    'clientId' => '89548641321ebc4bfaaa',
                    'clientSecret' => '1510a1ff394cad84ad1a427231809364e1a77a3c',
                ],
            // etc.
            ],
        ],
        'session' => [
            'class' => 'yii\web\DbSession',
        // Set the following if you want to use DB component other than
        // default 'db'.
        // 'db' => 'mydb',
        // To override default session table, set the following
        // 'sessionTable' => 'my_session',
        ],
        'view' => [
            'theme' => [
                'pathMap' => [
                    '@app/views' => '@themes/kudos/views',
                    '@app/modules' => '@themes/admin',
                    'baseUrl' => '@web',
                ],
            ],
        ],
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => '4yJxvTfgBd7GEeGe3FJqt7Z24Lh9p1Pq',
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                '/contact' => 'site/contact',
                '/signup' => 'site/signup',
                '/login' => 'site/login',
                '/logout' => 'site/logout',
                '<alias>' => 'site/page',
                
                /*'<category:\w+>/<subcategory:\w+>/<alias>' => 'site/page',
                '<category:\w+>/<subcategory:\w+>/<sub2category:\w+>/<alias>' => 'site/page',
                '<category:\w+>/<subcategory:\w+>/<sub2category:\w+>/<sub3category:\w+>/<alias>' => 'site/page',
                '<category:\w+>/<subcategory:\w+>/<sub2category:\w+>/<sub3category:\w+>/<sub4category:\w+>/<alias>' => 'site/page',
                '<category:\w+>/<subcategory:\w+>/<sub2category:\w+>/<sub3category:\w+>/<sub4category:\w+>/<sub5category:\w+>/<alias>' => 'site/page',*/
                
                
            ],
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
     'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => false,
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'mail.dotsquares.com',
                'username' => 'wwwsmtp@dotsquares.com',
                'password' => 'dsmtp909#',
                'port' => '25',
                'encryption' => '',
            ],
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => require(__DIR__ . '/db.php'),
        'reCaptcha' => require(__DIR__ . '/recaptcha.php'),
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            'site/*', // add or remove allowed actions to this list            
            'debug/*',
        ]
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    //$config['bootstrap'][] = 'debug';
    //$config['modules']['debug'] = 'yii\debug\Module';

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = 'yii\gii\Module';
    $config['components']['assetManager']['forceCopy'] = true;
}

return $config;
