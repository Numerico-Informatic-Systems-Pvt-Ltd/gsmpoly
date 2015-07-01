<?php

class EventsController extends AppController {

    public $components = array('Paginator', 'Upload');
    public $paginate = array(
        'limit' => 2,
        'order' => array(
            'Events.id' => 'desc'
        )
    );
    var $name = 'Events';

    public function public_view($id = null) {
        $this->Event->id = $id;
        if (!$this->Event->exists()) {
            throw new NotFoundException(__('Invalid event'));
        }
        $this->set('event', $this->Event->read(null, $id));
        //$this->redirect(array('action' => 'public_view'));
    }

    function index() {
        $this->Event->recursive = 0;
        $this->set('events', $this->paginate());
    }

    function view($slug = null) {
//        if (!$id) {
//            $this->Session->setFlash(__('Invalid event', true));
//            $this->redirect(array('action' => 'index'));
//        }
//        $this->set('event', $this->Event->read(null, $id));
        $options = array('conditions' => array('Event.slug' => $slug));
        $this->set('events', $this->Event->find('first', $options));
        if ($this->Session->read('UserAuth.User.id') == 1):
            $this->render('view');
        else:
            $this->render('public_view');
        endif;
    }

    function add() {
        /*if (!empty($this->data)) {
            $this->Event->create();
            if ($this->Event->save($this->data)) {
                $this->Session->setFlash(__('The event has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The event could not be saved. Please, try again.', true));
            }
        }
        $users = $this->Event->User->find('list');
        $this->set(compact('users'));*/
        if ($this->request->is('post')) {
             debug($_POST);
            $folderName = 'events';
            $slug = substr(slug($this->request->data['Event']['title']), 0, 40);
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 600, 125, $folderName, false, $slug);        
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

    function edit($id = null) {
        if (!$id && empty($this->data)) {
            $this->Session->setFlash(__('Invalid event', true));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->data)) {
            if ($this->Event->save($this->data)) {
                $this->Session->setFlash(__('The event has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The event could not be saved. Please, try again.', true));
            }
        }
        if (empty($this->data)) {
            $this->data = $this->Event->read(null, $id);
        }
        $users = $this->Event->User->find('list');
        $this->set(compact('users'));
    }

    function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for event', true));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Event->delete($id)) {
            $this->Session->setFlash(__('Event deleted', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Event was not deleted', true));
        $this->redirect(array('action' => 'index'));
    }

    public function list_all_event() {
        $this->Event->recursive = 0;
        $events = $this->Event->find('all', array('Event.active' => 1));
        return $events;
    }

}
