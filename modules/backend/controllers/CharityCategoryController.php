<?php

namespace app\modules\backend\controllers;

use Yii;
use app\models\CharityCategory;
use app\models\CharityCategorySearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CharityCategoryController implements the CRUD actions for CharityCategory model.
 */
class CharityCategoryController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all CharityCategory models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CharityCategorySearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $status =['1'=>'Active','0'=>'Inactive'];
        $beneficiaries =['1'=>'Yes','0'=>'No'];
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'status'=>$status,
            'beneficiaries'=>$beneficiaries
        ]);
    }

    /**
     * Displays a single CharityCategory model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new CharityCategory model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new CharityCategory();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing CharityCategory model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing CharityCategory model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the CharityCategory model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return CharityCategory the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = CharityCategory::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
      public function actionSort($id='') {
            if(!empty($id)){
            $model=\app\models\CharityCategory::find()->where(['parent_id'=>$id])->orderBY('sort_order ASC')->all();
            }
            else{
              $model=\app\models\CharityCategory::find()->where(['parent_id'=>0])->orderBY('sort_order ASC')->all();  
            }
                    if(!empty($_POST['sort_order'])){
                    $formdata = explode(",", $_POST['sort_order']);
                    $i=1;
                    
                    foreach ($formdata as  $value) { 
                    $sql="update  charity_category set sort_order = '".$i."' WHERE id='".$value."'";
                    Yii::$app->db->createCommand($sql)->execute();
                    $i++;}
                    
                  
                    Yii::$app->getSession()->setFlash('success','Sucessfully save');
                    return $this->redirect(['index','id'=>$id]);
                   
                    }
            return $this->render('sort', [
            'model' => $model,
            
        ]);
    }
}
