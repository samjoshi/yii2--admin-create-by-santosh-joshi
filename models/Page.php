<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "page".
 *
 * @property integer $id
 * @property integer $category_id
 * @property string $title
 * @property string $content
 * @property string $alias
 * @property integer $add_date
 * @property integer $modify_date
 * @property string $published
 */
class Page extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'page';
    }

    public function behaviors() {
        return [
            [
                'class' => \yii\behaviors\SluggableBehavior::className(),
                'attribute' => 'alias',
                'slugAttribute' => 'alias',
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['title', 'add_date', 'category_id'], 'required'],
            ['alias', 'unique'],
            [['content', 'published'], 'string'],
            [['add_date', 'modify_date'], 'integer'],
            [['title', 'alias'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'category_id' => 'Category',
            'title' => 'Title',
            'content' => 'Content',
            'alias' => 'Alias',
            'add_date' => 'Add Date',
            'modify_date' => 'Modify Date',
            'published' => 'Published',
        ];
    }

}
