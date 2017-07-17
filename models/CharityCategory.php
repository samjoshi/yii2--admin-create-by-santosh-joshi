<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "charity_category".
 *
 * @property integer $id
 * @property integer $parent_id
 * @property string $cat_name
 * @property string $alias
 * @property integer $beneficiaries
 * @property integer $sort_order
 * @property integer $published
 *
 * @property CharityAssignCategory[] $charityAssignCategories
 */
class CharityCategory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'charity_category';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent_id', 'beneficiaries', 'sort_order', 'published'], 'integer'],
            [['cat_name', 'alias'], 'required'],
            [['cat_name', 'alias'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parent_id' => 'Parent ID',
            'cat_name' => 'Category Name',
            'alias' => 'Alias',
            'beneficiaries' => 'Beneficiaries',
            'sort_order' => 'Sort Order',
            'published' => 'Published',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCharityAssignCategories()
    {
        return $this->hasMany(CharityAssignCategory::className(), ['cat_id' => 'id']);
    }
}
