<?php

App::uses('AppController', 'Controller');

/**
 * Events Controller
 *
 * @property Event $Event
 */
class EventsController extends AppController {

      public $components = array('Paginator','Upload');
	    public $paginate = array(
        'limit' => 2,
        'order' => array(
            'Events.id' => 'desc'
        )
    );
    /**
     * index method
     *
     * @return void
     */
    public function index() {
        $this->Event->recursive = 0;
        $this->set('events', $this->paginate());
    }

    /**
     * view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function public_view($id = null) {
        $this->Event->id = $id;
        if (!$this->Event->exists()) {
            throw new NotFoundException(__('Invalid event'));
        }
        $this->set('event', $this->Event->read(null, $id));
        //$this->redirect(array('action' => 'public_view'));
    }

    public function view($id = null) {
        $this->Event->id = $id;
        if (!$this->Event->exists()) {
            throw new NotFoundException(__('Invalid event'));
        }
        $this->set('event', $this->Event->read(null, $id));
    }

    /**
     * add method
     *
     * @return void
     */
    public function add() {
       
        if ($this->request->is('post')) {
             //debug($_POST);
            $folderName = 'events';
            $slug = substr(slug($this->request->data['Event']['title']), 0, 40);
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name", 600, 125, $folderName, false, $slug);        
            $this->request->data['Event']['image'] = $image_path;
            $this->Event->create();
            if ($this->Event->save($this->request->data)) {
                $this->Session->setFlash(__('The event has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The event could not be saved. Please, try again.'));
            }
        }
        $users = $this->Event->User->find('list');
        $this->set(compact('users'));
    }

    /**
     * edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function edit($id = null) {
        $this->Event->id = $id;
        if (!$this->Event->exists()) {
            throw new NotFoundException(__('Invalid event'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {

            $slug = substr(slug($this->request->data['Event']['title']), 0, 40);
            $folderName = 'events';
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 600, 125, $folderName, false, $slug);

            if (strlen($image_path) > 4):
                $this->request->data['Event']['image'] = $image_path;
                $detail = $this->Event->findById($id);
                $filename = $detail['Event']['image'];
                $this->Upload->delete_image($filename, $folderName);
            endif;


            if ($this->Event->save($this->request->data)) {
                $this->Session->setFlash(__('The event has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The event could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->Event->read(null, $id);
        } 
        $users = $this->Event->User->find('list'); 
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
        $this->Event->id = $id;
        if (!$this->Event->exists()) {
            throw new NotFoundException(__('Invalid event'));
        }
        if ($this->Event->delete()) {
            $this->Session->setFlash(__('Event deleted'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Event was not deleted'));
        $this->redirect(array('action' => 'index'));
    }

    public function list_all_event() {
        $this->Event->recursive = 0;
        $events = $this->Event->find('all', array('Event.active' => 1));
        return $events;
    }

}
