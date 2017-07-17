<?php

namespace app\modules\backend\controllers;

use Yii;
use yii\base\Model;
use app\models\User;
use app\models\UserSearch;
use app\models\ChangePassword;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends Controller {

    public function behaviors() {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new UserSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    

    /**
     * Creates a new User model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {

        $model = new \app\models\SignupForm(['scenario' => 'adduser']);
        $profile = new \app\models\Userprofile();
        


        if ($model->load(Yii::$app->request->post()) && $profile->load(Yii::$app->request->post())) {

            if ($model->validate()) {
                $user = $model->signup(10, $profile);
                if ($user) { // if user created
                    $mail = Yii::$app->mailer->compose(['html' => 'registermailAdmin'], ['user' => $user]);
                    $sub = 'Welcome to ' . Yii::$app->name;
                    $mail->setTo($user->email);
                    $mail->setFrom(Yii::$app->params['adminEmail']);
                    $mail->setSubject($sub);
                    $data = $mail->send();

                    Yii::$app->getSession()->setFlash('success', 'Your User successfully registered');
                    return $this->redirect(['/backend/user/index']);
                }
            } else {
                Yii::$app->getSession()->setFlash('danger', 'Error at creating user');
            }
        }

        return $this->render('create', [
                    'model' => $model,
                    'profile' => $profile,
        ]);
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = \app\models\User::find()->where("id='$id'")->one();
        $profile = \app\models\Userprofile::find()->where("user_id = '$id'")->one();
        if ($model->load(Yii::$app->request->post()) && $profile->load(Yii::$app->request->post())) {
            if ($model->validate()) {
                if ($model->save()) { // if user saved                    
                    $profile->image = \yii\web\UploadedFile::getInstance($profile, 'image');
                    if ($profile->image) {
                        $name = uniqid() . '.' . $profile->image->extension;
                        $profile->image->saveAs(Yii::$app->basePath . '/web/images/profile/' . $name);
                        $profile->image = $name;
                    } else {
                        $profile->image = \app\models\Userprofile::find()->where("user_id='" . $model->id . "'")->one()->image;
                    }
                    if ($profile->validate()) {
                        $profile->save();
                        Yii::$app->getSession()->setFlash('success', 'Your profile sucessfully updated');
                        return $this->redirect(['/backend/user/index']);
                    } else {
                        Yii::$app->getSession()->setFlash('danger', 'Error at updating profile');
                    }
                }
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                Yii::$app->getSession()->setFlash('danger', 'Error at updating user');
            }
        }
        return $this->render('update', [
                    'model' => $model,
                    'profile' => $profile,
        ]);
    }

    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();
        Yii::$app->getSession()->setFlash('success', 'User  successfully deleted');
        return $this->redirect(['index']);
    }
      public function actionBlockUser($id){

        $user = User::findOne($id);
       
        if(empty($user)){
            Yii::$app->getSession()->setFlash('danger', 'No such user exists!');
            return $this->redirect('user');
        }
        if(empty($user->status)){
            $user->status = 10;
        }else{
           echo  $user->status = 0;
        }
        if($user->save()){ 
            $message  = "$user->username account has been sucessfully ".(($user->status==0)?'blocked':'unblocked');
            Yii::$app->getSession()->setFlash('success',$message);
            return $this->redirect(Yii::$app->urlManager->createAbsoluteUrl('backend/user'));
        }
    }
 public function actionChangePassword(){
           $id = \Yii::$app->user->identity->id;//load the user id from the login session 
          $model = new ChangePassword();
          
            if ($model->load(Yii::$app->request->post()) and $model->validate()) {//validate submitted data
           $data = $model->changepassword(Yii::$app->request->post());
         
            if($data!='' and $data!=="") {
           Yii::$app->getSession()->setFlash('success', 'Your Password has been changed successfully');
               return $this->refresh();
            }}
 
           return $this->render('change-password', [
            'model' => $model,
          ]);
          
        
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
