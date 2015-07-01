<?php
class OtherinstitutesController extends AppController {

	var $name = 'Otherinstitutes';

	function index() {
		$this->Otherinstitute->recursive = 0;
		$this->set('otherinstitutes', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid otherinstitute', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('otherinstitute', $this->Otherinstitute->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Otherinstitute->create();
			if ($this->Otherinstitute->save($this->data)) {
				$this->Session->setFlash(__('The otherinstitute has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The otherinstitute could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid otherinstitute', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Otherinstitute->save($this->data)) {
				$this->Session->setFlash(__('The otherinstitute has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The otherinstitute could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Otherinstitute->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for otherinstitute', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Otherinstitute->delete($id)) {
			$this->Session->setFlash(__('Otherinstitute deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Otherinstitute was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
         public function list_all_institute() {
        $this->Otherinstitute->recursive = 0;
        $otherinstitute = $this->Otherinstitute->find('all', array('Otherinstitute.active' => 1));
        //debug($events);
        return $otherinstitute;
    }
}
