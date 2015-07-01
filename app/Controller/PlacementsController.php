<?php

App::uses('AppController', 'Controller');

class PlacementsController extends AppController {

    
    var $name = 'Placements';
    public $components = array('Paginator');
    public $paginate = array(
        'limit' => 5,
        'order' => array(
            'Placement.id' => 'desc'
        )
    );

    public function placement_for_homepage() {
        $this->Placement->recursive = 0;
        return $this->Placement->find('all', array('limit' => 10, 'order' => array('id DESC')));
    }

    function index() {

        $this->Placement->recursive = 0;
        $this->Paginator->settings = $this->paginate;
        $this->set('placements', $this->paginate());
    }

    function view($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid placement', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->set('placement', $this->Placement->read(null, $id));
    }

    function add() {
        if (!empty($this->data)) {
            $this->Placement->create();
            if ($this->Placement->save($this->data)) {
                $placement_id = $this->Placement->getLastInsertId();
                $this->data['Placement']['placement_id'] = $placement_id;
                $this->Session->setFlash(__('The placement has been saved', true));
                //$this->redirect(array('action' => 'index'));
                //$this->set("last", $this->Placement->getLastInsertId());
                $this->redirect(array('controller' => 'Academicqualifications', 'action' => 'add', $placement_id));
            } else {
                $this->Session->setFlash(__('The placement could not be saved. Please, try again.', true));
            }
        }
    }

    function edit($id = null) {
        if (!$id && empty($this->data)) {
            $this->Session->setFlash(__('Invalid placement', true));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->data)) {
            if ($this->Placement->save($this->data)) {
                $this->Session->setFlash(__('The placement has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The placement could not be saved. Please, try again.', true));
            }
        }
        if (empty($this->data)) {
            $this->data = $this->Placement->read(null, $id);
        }
    }

    function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for placement', true));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Placement->delete($id)) {
            $this->Session->setFlash(__('Placement deleted', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Placement was not deleted', true));
        $this->redirect(array('action' => 'index'));
    }

   

    function export() {

        $this->layout = null;
        $this->autoLayout = false;
        $posts = $this->Placement->find('all');
        $this->set('posts', $posts);
        Configure::write('debug','0');
        
    }

}
