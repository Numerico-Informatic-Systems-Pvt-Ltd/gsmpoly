<?php
class TechnicalqualificationsController extends AppController {

	var $name = 'Technicalqualifications';
	 public $components = array('Paginator');
        public $paginate = array(
        'limit' => 5,
        'order' => array(
            'Technicalqualification.id' => 'desc'
        )
    );

	function index() {
		$this->Technicalqualification->recursive = 0;
		$this->set('technicalqualifications', $this->paginate());
                //debug($this->set('technicalqualifications', $this->paginate()));
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid technicalqualification', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('technicalqualification', $this->Technicalqualification->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Technicalqualification->create();
			if ($this->Technicalqualification->save($this->data)) {
				$this->Session->setFlash(__('The technicalqualification has been saved', true));
				$this->redirect(array('action' => 'thank_you'));
			} else {
				$this->Session->setFlash(__('The technicalqualification could not be saved. Please, try again.', true));
			}
		}
		$placements = $this->Technicalqualification->Placement->find('list');
		$this->set(compact('placements'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid technicalqualification', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Technicalqualification->save($this->data)) {
				$this->Session->setFlash(__('The technicalqualification has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The technicalqualification could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Technicalqualification->read(null, $id);
		}
		$placements = $this->Technicalqualification->Placement->find('list');
		$this->set(compact('placements'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for technicalqualification', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Technicalqualification->delete($id)) {
			$this->Session->setFlash(__('Technicalqualification deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Technicalqualification was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
        public function thank_you()
        {
            
        }
}
