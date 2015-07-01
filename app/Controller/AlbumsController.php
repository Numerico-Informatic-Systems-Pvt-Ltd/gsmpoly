<?php

App::uses('AppController', 'Controller');

/**
 * Albums Controller
 *
 * @property Album $Album
 */
class AlbumsController extends AppController {

    public $components = array('Paginator','Upload');
	    public $paginate = array(
        'limit' => 9,
        'order' => array(
            'Albums.id' => 'desc'
        )
    );
    /**
     * index method
     *
     * @return void
     */
    public function index() {
        $this->Album->recursive = 0;
        $this->set('albums', $this->paginate());
        if ($this->Session->read('UserAuth.User.user_group_id') == 1):
            $this->autoRender = false;
            $this->render('admin_index');
        endif;
    }

    /**
     * view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function view($id = null) {
        $this->Album->id = $id;
        if (!$this->Album->exists()) {
            throw new NotFoundException(__('Invalid album'));
        }
        $this->set('album', $this->Album->read(null, $id));
        if ($this->Session->read('UserAuth.User.user_group_id') == 1):
            $this->autoRender = false;
            $this->render('admin_view');
        endif;
    }

    /**
     * add method
     *
     * @return void
     */
    public function add() {
        if ($this->request->is('post')) {
            $folderName = 'albums';
            $slug = substr(slug($this->request->data['Album']['name']), 0, 40);
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 1024,768, $folderName, false, $slug);
            //debug($image_path);		  
            $this->request->data['Album']['image'] = $image_path;
            $this->Album->create();
            if ($this->Album->save($this->request->data)) {
                $this->Session->setFlash(__('The album has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The album could not be saved. Please, try again.'));
            }
        }
        $users = $this->Album->User->find('list');
        $this->set(compact('users'));
    }
public function album_view(){
    //$this->loadModel('Blogcomment');
        $this->set('albums', $this->Album->find('all', array('conditions' => array('Album.active' => 1))));
}
public function all_pictures($album_id = null){
     if($album_id) {
        
            $this->loadModel('Picture');
             $this->Picture->recursive = 0;
            $this->set('pictures', $this->Picture->find('all', array('conditions' => array('Picture.album_id' => $album_id))));
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
        $this->Album->id = $id;
        if (!$this->Album->exists()) {
            throw new NotFoundException(__('Invalid album'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {

            $slug = substr(slug($this->request->data['Album']['name']), 0, 40);
            $folderName = 'albums';
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 1024,768, $folderName, false, $slug);

            if (strlen($image_path) > 4):
                $this->request->data['Album']['image'] = $image_path;
                //$detail = $this->Product->findById($id);
                $filename = $detail['Album']['image'];
                $this->Upload->delete_image($filename, $folderName);
            endif;


            if ($this->Album->save($this->request->data)) {
                $this->Session->setFlash(__('The album has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The album could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->Album->read(null, $id);
        }
        $users = $this->Album->User->find('list');
        $this->set(compact('users'));
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
        $this->Album->id = $id;
        if (!$this->Album->exists()) {
            throw new NotFoundException(__('Invalid album'));
        }
        if ($this->Album->delete()) {
            $this->Session->setFlash(__('Album deleted'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Album was not deleted'));
        $this->redirect(array('action' => 'index'));
    }

}
