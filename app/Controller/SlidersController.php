<?php
App::uses('AppController', 'Controller');

class SlidersController extends AppController {
public $components = array('Paginator','Upload');
	    public $paginate = array(
        'limit' => 9,
        'order' => array(
            'Sliders.id' => 'desc'
        )
    );
    var $name = 'Sliders';

    function index() {
        $this->Slider->recursive = 0;
        $this->set('sliders', $this->paginate());
    }

    function view($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid slider', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->set('slider', $this->Slider->read(null, $id));
    }

    function add() {
        //debug($_POST);
        if ($this->request->is('post'))  {
            
            $folderName = 'sliders';
            $slug = substr(slug($this->request->data['Slider']['title']), 0, 40);
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 600, 296, $folderName, false, $slug);
            $this->request->data['Slider']['image'] = $image_path;
            $this->Slider->create();
            //debug('hiii');
            if ($this->Slider->save($this->request->data)) {
                $this->Session->setFlash(__('The slider has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The slider could not be saved. Please, try again.', true));
            }
        }
         //$users = $this->Slider->User->find('list');
    }

    function edit($id = null) {
        if (!$id && empty($this->data)) {
            $this->Session->setFlash(__('Invalid slider', true));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->data)) {
            if ($this->Slider->save($this->data)) {
                $this->Session->setFlash(__('The slider has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The slider could not be saved. Please, try again.', true));
            }
        }
        if (empty($this->data)) {
            $this->data = $this->Slider->read(null, $id);
        }
    }

    function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for slider', true));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Slider->delete($id)) {
            $this->Session->setFlash(__('Slider deleted', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Slider was not deleted', true));
        $this->redirect(array('action' => 'index'));
    }
    
     public function list_all_slider() {
        $this->Slider->recursive = 0;
        $slider = $this->Slider->find('all', array('Slider.active' => 1));
        return $slider;
    }

}
