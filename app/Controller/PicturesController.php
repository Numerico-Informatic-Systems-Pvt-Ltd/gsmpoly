<?php
App::uses('AppController', 'Controller');
/**
 * Pictures Controller
 *
 * @property Picture $Picture
 */
class PicturesController extends AppController {

public $components = array('Paginator','Upload');
	    public $paginate = array(
        'limit' => 9,
        'order' => array(
            'Pictures.id' => 'desc'
        )
    );
 /*** index method
 *
 * @return void
 */
	public function index() {
		$this->Picture->recursive = 0;
		$this->set('pictures', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Picture->id = $id;
		if (!$this->Picture->exists()) {
			throw new NotFoundException(__('Invalid picture'));
		}
		$this->set('picture', $this->Picture->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add($id = null) {
            
		if ($this->request->is('post')) 
                        {
                   // debug($_POST);
                          $folderName = 'pictures';		  
                          $slug = substr(slug($this->request->data['Picture']['name']),0,40);                         
                          $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data,"name1",1024,768,$folderName,false,$slug);		  
                           //debug($image_path);		  
                          $this->request->data['Picture']['picture']	= $image_path;
                         // $this->request->data['Picture']['album_id']	= $id;
                          $this->Picture->create();
                                if ($this->Picture->save($this->request->data)) {
                                        $this->Session->setFlash(__('The picture has been saved'));
                                        $this->redirect(array('action' => 'index'));
                                } else {
                                        $this->Session->setFlash(__('The picture could not be saved. Please, try again.'));
                                }
                    }
		$this->request->data['Picture']['album_id'] = $id;
		$albums = $this->Picture->Album->find('list');
		$this->set(compact('albums'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->Picture->id = $id;
		if (!$this->Picture->exists()) {
			throw new NotFoundException(__('Invalid picture'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			
			
		$slug = substr(slug($this->request->data['Picture']['name']),0,40);
		$folderName = 'pictures';
		$image_path = $this->Upload->upload_image_and_thumbnail($this->request->data,"name1",1024,768,$folderName,false,$slug);
		
		if(strlen($image_path)>4):
		        $this->request->data['Picture']['picture']	= $image_path;
				$detail = $this->Picture->findById($id);
		 		$filename = $detail['Picture']['picture'];	
			    $this->Upload->delete_image($filename,$folderName);		
		endif;	
	
	
			if ($this->Picture->save($this->request->data)) {
				$this->Session->setFlash(__('The picture has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The picture could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Picture->read(null, $id);
		}
		$albums = $this->Picture->Album->find('list');
		$this->set(compact('albums'));
	}

/**
 * delete method
 *
 * @throws MethodNotAllowedException
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Picture->id = $id;
		if (!$this->Picture->exists()) {
			throw new NotFoundException(__('Invalid picture'));
		}
		if ($this->Picture->delete()) {
			$this->Session->setFlash(__('Picture deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Picture was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
