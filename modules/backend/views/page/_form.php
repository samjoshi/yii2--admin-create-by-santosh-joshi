<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Page */
/* @var $form yii\widgets\ActiveForm */
$this->registerJsFile(yii\helpers\BaseUrl::base() . '/js/ckeditor/ckeditor.js', ['position' => $this::POS_END, 'depends' => [\yii\web\JqueryAsset::className()]]);

?>

<div class="page-form">

    <?php $form = ActiveForm::begin(); ?>
    
    <div class="form-group field-pagecategory-title required">
        <label for="pagecategory-title" class="control-label">Parent Category</label>
        <?= \app\components\PageCategoryTree::drawDropDownTreeAdmin($parentId = 0, $name = 'Page[category_id]', $id = 'Page[category_id]', $exclude = [], $defaultSelected = $model->category_id, $showRoot = false); ?>
        <div class="help-block"></div>
    </div>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
    
    <?= $form->field($model, 'alias')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'content')->textarea(['rows' => 6,'class' => 'ckeditor']) ?>
    
    <?= $form->field($model, 'published')->dropDownList([ 'Published' => 'Published', 'Unpublished' => 'Unpublished', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
