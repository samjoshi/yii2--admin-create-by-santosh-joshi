<?php

namespace app\models;

use app\models\User;
use yii\base\Model;
use Yii;

/**
 * Login form
 */
class ChangePassword extends Model
{
    public $password;
    public $newpassword;
    public $confirmpassword ;

/**
     * @inheritdoc
     */
    public function rules()
    {
        return [
        
             [['password', 'newpassword','confirmpassword'], 'required'],
             [['newpassword','confirmpassword'], 'string', 'min' => 5 , 'max'=>8],
             ['confirmpassword','compare', 'compareAttribute'=>'newpassword','message'=>"Passwords don't match"],
             [['password'], 'checkpassword'],
             [['password','newpassword','confirmpassword'],'filter','filter' => 'trim'],
        ];
    }

    
    
        public function attributeLabels(){
        return [
            'password' => ' Old Password',
            'newpassword' => ' New password',
            'confirmpassword' => ' Verify password',
           
        ];
    }
    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
  /*  public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();
         if (!$user || !$user->validatePassword($this->password)) {
                  $this->addError($attribute, 'Incorrect username or password.');
            }
            else if($user->status=='0'){
          //   echo   $user->status; die;
              $this->addError($attribute, 'Your account is an inactive.');  
            }
        }
    }

   */

    /**
     * Finds user by [[username]]
     *
     * @return User|null
     */
   public function changepassword($data){
       
       
       $newpass =   $data['ChangePassword']['newpassword'];    
        $id = \Yii::$app->user->identity->id;
       $user = User::findOne(['id'=>$id]); 
        $user->setPassword($newpass);
        if($user->save()){
            return "change successfully";
        }
      
    }
    
    
   public function checkpassword($attribute, $params)
    {
          $id = \Yii::$app->user->identity->id;
        $pass = $this->password; 
         $user = User::findOne(['id'=>$id]);
         $da =    $user->validatePassword($pass);
        if($da=='' and $da!="1"){
       $this->addError($attribute, 'You entered an invalid old password.');  
          }  
    }
    
    
    
}