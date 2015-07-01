<?php
class AcademicqualificationsController extends AppController {

	var $name = 'Academicqualifications';
        public $components = array('Paginator');
        public $paginate = array(
        'limit' => 5,
        'order' => array(
            'Academicqualification.id' => 'desc'
        )
    );

	function index() {
		$this->Academicqualification->recursive = 0;
                 $this->Paginator->settings = $this->paginate;
		$this->set('academicqualifications', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid academicqualification', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('academicqualification', $this->Academicqualification->read(null, $id));
	}

	function add() {
            $placement_id = $this->params['pass'][0];
		if (!empty($this->data)) {
			$this->Academicqualification->create();
			if ($this->Academicqualification->save($this->data)) {
				$this->Session->setFlash(__('The academicqualification has been saved', true));
				//$this->redirect(array('action' => 'index'));
                                $this->redirect(array('controller'=>'Technicalqualifications','action' => 'add',$placement_id));
			} else {
				$this->Session->setFlash(__('The academicqualification could not be saved. Please, try again.', true));
			}
		}
		$placements = $this->Academicqualification->Placement->find('list');
		$this->set(compact('placements'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid academicqualification', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Academicqualification->save($this->data)) {
				$this->Session->setFlash(__('The academicqualification has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The academicqualification could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Academicqualification->read(null, $id);
		}
		$placements = $this->Academicqualification->Placement->find('list');
		$this->set(compact('placements'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for academicqualification', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Academicqualification->delete($id)) {
			$this->Session->setFlash(__('Academicqualification deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Academicqualification was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
