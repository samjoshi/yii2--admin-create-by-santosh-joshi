<?php

namespace app\models;

use app\models\User;
use yii\base\Model;
use Yii;

/**
 * Signup form
 */
class SignupForm extends Model {

    public $username;
    public $email;
    public $password;
    public $reg_key;
    public $verifyPassword;
    public $aggrement;

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            ['username', 'filter', 'filter' => 'trim'],
            ['username', 'required'],
            [['aggrement'], 'required','on'=>'register', 'requiredValue' => 1, 'message' => 'Please check the checkbox'],
            ['username', 'unique', 'targetClass' => '\app\models\User','on'=>['register', 'adduser'], 'message' => 'This username has already been taken.'],
            ['username', 'string', 'min' => 2, 'max' => 111],
            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'unique','on'=>['register', 'adduser'], 'targetClass' => '\app\models\User', 'message' => 'This email address has already been taken.'],
            [['password','verifyPassword'], 'required','on'=>['register', 'adduser']],
            ['verifyPassword','compare', 'compareAttribute'=>'password', 'message'=>"Passwords don't match"],
            ['password', 'string', 'min' => 6],
        ];
    }
    public function scenarios() {
        $scenarios = parent::scenarios();
        $scenarios['register'] = ['email', 'username', 'aggrement', 'password', 'verifyPassword'];
        $scenarios['adduser'] = ['email', 'username','password', 'verifyPassword'];
        /*$scenarios['adduser'] = ['email', 'username', 'password', 'verifyPassword', 'country', 'buyer_appraiser', 'comments',
            'ebayId', 'ebayRating', 'address','city','state', 'email', 'name','lastname', 'areaOfExperties', 'companyName', 'website',
            'contactPerson', 'buisnessPhoneNumber', 'companyAddress', 'picture', 'powersellecr_user', 'verified_user', 'contact_no', 'pincode'
        ];
        $scenarios['admin-profile'] = ['email', 'username', 'country', 'address','city','state', 'name','lastname', 'password', 'verifyPassword'];*/

        return $scenarios;
    }

    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup($status = 0, $profile) {
        if ($this->validate()) {
            $user = new User();
            $user->username = $this->username;
            $user->email = $this->email;
            $user->status = $status;
            $user->setPassword($this->password);
            $user->generateAuthKey();
            $user->reg_key = $this->generateregToken();
           if ($user->save()) {                
                $profile->user_id = $user->id;
                /*$profile->image = \yii\web\UploadedFile::getInstance($profile, 'image');
                if ($profile->image) {
                    $name = uniqid() . '.' . $profile->image->extension;
                    $profile->image->saveAs(Yii::$app->basePath . Yii::$app->params['imagePath']['user_profile_images'] . $name);
                    $profile->image = $name;
                } else {
                    $profile->image = 'noimg.jpg';
                }*/
                $profile->save();
                Yii::$app->authManager->assign(Yii::$app->authManager->getRole('Registered'), $user->id);
                $user['pass'] = trim($this->password);
                $user['name'] = $this->username;
                return $user;
            }
        }

        return null;
    }

    function generateregToken() {
        return Yii::$app->security->generateRandomString() . time() . rand();
    }

}
