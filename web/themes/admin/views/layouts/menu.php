<?php
$controller = Yii::$app->controller->id;
$action =  Yii::$app->controller->action->id;
$url = '/backend/'.$controller."/".$action;
use yii\helpers\Url;
echo \yii\widgets\Menu::widget([
    'options' => ['class' => 'sidebar-menu treeview'],
    'items' => [
        ['label' => 'Navigation', 'url' => '#','options' => ['class' => 'header1']],
        ['label' => "<i class='fa fa-home'></i> <span>Home</span>", 'url' => Url::to(['/backend/default/index'], true)],
        ['label' => "<i class='fa fa-gears'></i> <span>General Settings</span>", 'url' => Url::to(['/backend/setting'], true), 'url' => ['/backend/setting/index'],'active' => $url == '/backend/setting/index'  | $url == '/backend/setting/create' ? true : false | $url == '/backend/setting/update' ? true : false | $url == 'backend/setting/index' ? true : false],
        ['label' => "<i class='fa fa-users'></i> <span>User Manager</span>",
            'url' => ['#'],
            'template' => '<a href="{url}" >{label}<i class="fa fa-angle-left pull-right"></i></a>',
            'items' => [
                ['label' => 'Create User', 'url' =>  Url::to(['/backend/user/create'], true), 'active' => $url == '/backend/user/create' | '' ? true : false],
                ['label' => 'List All Users', 'url' => ['/backend/user/index'],'active' => $url == '/backend/user/index'  | $url == '/backend/user/update' ? true : false | $url == 'backend/user/index' ? true : false],                
            ],
        ],
        /*['label' => "<i class='fa fa-arrow-circle-o-right' aria-hidden='true'></i> <span>Category Manager</span>",
            'url' => ['#'],
            'template' => '<a href="{url}" >{label}<i class="fa fa-angle-left pull-right"></i></a>',
            'items' => [
                ['label' => 'Create Category', 'url' =>  Url::to(['/backend/charity-category/create'], true), 'active' => $url == '/backend/charity-category/create' | '' ? true : false],
                ['label' => 'List All Category', 'url' => ['/backend/charity-category/index'],'active' => $url == '/backend/charity-category/index'  | $url == '/backend/charity-category/update' ? true : false | $url == '/backend/charity-category/sort' ? true : false | $url == 'backend/user/index' ? true : false],                
            ],
        ],*/
        
        ['label' => "<i class='fa fa-edit'></i> <span>Pages Manager</span>",
            'url' => ['#'],
            'template' => '<a href="{url}" >{label}<i class="fa fa-angle-left pull-right"></i></a>',
            'items' => [
				['label' => 'List All Page Categories', 'url' =>  Url::to(['/backend/pagecategory/index'], true)],
				['label' => 'Create Page Category', 'url' =>  Url::to(['/backend/pagecategory/create'], true)],
                ['label' => 'Create Page', 'url' =>  Url::to(['/backend/page/create'], true)],
                ['label' => 'List All Pages', 'url' => Url::to(['/backend/page/index'], true)],                
            ],
        ],
        ['label' => "<i class='fa fa-sign-out' aria-hidden='true'></i> <span>Logout</span>", 'url' => Url::to(['/site/logout'], true)],
    ],
    'submenuTemplate' => "\n<ul class='treeview-menu'>\n{items}\n</ul>\n",
    'encodeLabels' => false, //allows you to use html in labels
    'activateParents' => true,]);
