<?php
class PlacementcompaniesController extends AppController {

	var $name = 'Placementcompanies';

	function index() {
		$this->Placementcompany->recursive = 0;
		$this->set('placementcompanies', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid placementcompany', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('placementcompany', $this->Placementcompany->read(null, $id));
	}

	/*function add() {
		if (!empty($this->data)) {
			$this->Placementcompany->create();
			if ($this->Placementcompany->save($this->data)) {
				$this->Session->setFlash(__('The placementcompany has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The placementcompany could not be saved. Please, try again.', true));
			}
		}
	}*/
        function add() {
         if (!empty($this->data)) {
                $folderName = 'placementcompany';
	 	$slug = substr(slug($this->request->data['Placementcompany']['image']),0,40);
    $image_path = $this->Upload->upload_image_and_thumbnail(
            $this->request->data,"name1",600,296,$folderName,false,$slug);
		$this->request->data['Placementcompany']['image']= $image_path;	
                
			$this->Placementcompany->create();
			if ($this->Placementcompany->save($this->data)) {
				$this->Session->setFlash(__('The album has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The album could not be saved. Please, try again.', true));
			}
		}
		//$contents = $this->Placementcompany->Content->find('list');
		//$this->set(compact('contents'));
        }

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid placementcompany', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Placementcompany->save($this->data)) {
				$this->Session->setFlash(__('The placementcompany has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The placementcompany could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Placementcompany->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for placementcompany', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Placementcompany->delete($id)) {
			$this->Session->setFlash(__('Placementcompany deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Placementcompany was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
