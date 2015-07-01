<?php
App::uses('AppController', 'Controller');
/**
 * NoticeBoards Controller
 *
 * @property NoticeBoard $NoticeBoard
 */
class NoticeBoardsController extends AppController {
	
/**
 * index method
 *
 * @return void
 */
 
 	public function recent(){
		$this->paginate = array(
        'limit' => 5,
        'order' => array(
            'NoticeBoard.created' => 'desc'
    	    )
    	);
		$this->NoticeBoard->recursive = 0;
		$noticeboards = $this->NoticeBoard->find('all',array('NoticeBoard.active' => 1));	
		return $noticeboards;
	}
	
	public function index() {
		$this->NoticeBoard->recursive = 0;
		$this->set('noticeBoards', $this->paginate());
		$this->autoRender = false;
		if($this->Session->read('UserAuth.User.id') == 1):
			$this->render('index');
		else:
			$this->render('public_index');	
		endif;
	}
/**

 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($slug = null,$id = null) {
		/*
		if (!$this->NoticeBoard->exists($id)) {
			throw new NotFoundException(__('Invalid notice board'));
		}
		*/
		$options = array('conditions' => array('NoticeBoard.slug' => $slug));
		$this->set('noticeBoard', $this->NoticeBoard->find('first', $options));
		if($this->Session->read('UserAuth.User.id') == 1):
			$this->render('view');
		else:
			$this->render('public_view');	
		endif;
	}

        
        
	
	public function featuredDocuments() {
		
		$this->autoRender = false;
		
		$this->NoticeBoard->recursive = -1;
		
		$documents = $this->NoticeBoard->find('all',
		array('fields'=>array('NoticeBoard.title','NoticeBoard.url','NoticeBoard.description'),'limit'=>6,
		'order'=>array('NoticeBoard.id DESC')));
		
		return $documents;
		
	}

/**
 * add method
 *
 * @return void
 */
        /*public function admin_add() {
            if (!empty($this->data)) {
			$this->NoticeBoard->create();
			if ($this->NoticeBoard->save($this->data)) {
				$this->Session->setFlash(__('The NoticeBoard has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The NoticeBoard could not be saved. Please, try again.', true));
			}
		}
        }*/
	public function add() {
       
            
		if ($this->request->is('post')) {
                    ///debug('Hiiiiiii');die;
			//debug($this->request->data);
			 /*$folderName = 'profiles';	 */
		  $slug = substr(slug($this->request->data['NoticeBoard']['title']),0,40);
		 $document_path = '/files/'.$this->request->data['NoticeBoard']['url']['name'];
		 $path= move_uploaded_file($this->data['NoticeBoard']['url']['tmp_name'], $_SERVER['DOCUMENT_ROOT'] . '/app/webroot/files/' . $this->data['NoticeBoard']['url']['name']);
			/*debug($_SERVER['DOCUMENT_ROOT']);		
		  debug($path);*/
		 /* $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data,"name1",600,125,$folderName,false,$slug);*/
		  $this->request->data['NoticeBoard']['url']	= $document_path;
		  //debug($image_path);
		  //$this->request->data['NoticeBoard']['url']	= $document_path;
	  	 // $this->request->data['Event']['image']	= $image_path;
			$this->NoticeBoard->create();
			if ($this->NoticeBoard->save($this->request->data)) {
				$this->Session->setFlash(__('The notice board has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The notice board could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->NoticeBoard->exists($id)) {
			throw new NotFoundException(__('Invalid notice board'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->NoticeBoard->save($this->request->data)) {
				$this->Session->setFlash(__('The notice board has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The notice board could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('NoticeBoard.' . $this->NoticeBoard->primaryKey => $id));
			$this->request->data = $this->NoticeBoard->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->NoticeBoard->id = $id;
		if (!$this->NoticeBoard->exists()) {
			throw new NotFoundException(__('Invalid notice board'));
		}
		//$this->request->onlyAllow('post', 'delete');
		if ($this->NoticeBoard->delete()) {
			$this->Session->setFlash(__('Notice board deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Notice board was not deleted'));
		$this->redirect(array('action' => 'index'));
	}


	public function list_all_notice() {
		$this->NoticeBoard->recursive = 0;
		$noticeboards = $this->NoticeBoard->find('all',array('NoticeBoard.active' => 1));	
		return $noticeboards;
	}
        
        


}
