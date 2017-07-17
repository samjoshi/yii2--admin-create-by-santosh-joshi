<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AdminAsset extends AssetBundle
{
    public $basePath = '@web/themes/admin';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
		'https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css',
		'https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css',
		'themes/admin/views/files/dist/css/AdminLTE.min.css',
		'themes/admin/views/files/dist/css/skins/skin-blue.min.css',
    ];
    public $js = [
        'themes/admin/views/files/dist/js/app.js'
    ];
    public $depends = [
        'yii\web\JqueryAsset',
         'yii\jui\JuiAsset',
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
