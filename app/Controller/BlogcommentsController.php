<?php
class BlogcommentsController extends AppController {
        

	var $name = 'Blogcomments';

	function index() {
		$this->Blogcomment->recursive = 0;
		$this->set('blogcomments', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid blogcomment', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('blogcomment', $this->Blogcomment->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Blogcomment->create();
			if ($this->Blogcomment->save($this->data)) {
				$this->Session->setFlash(__('The blogcomment has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The blogcomment could not be saved. Please, try again.', true));
			}
		}
		$users = $this->Blogcomment->User->find('list');
		$blogs = $this->Blogcomment->Blog->find('list');
		$this->set(compact('users', 'blogs'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid blogcomment', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Blogcomment->save($this->data)) {
				$this->Session->setFlash(__('The blogcomment has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The blogcomment could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Blogcomment->read(null, $id);
		}
		$users = $this->Blogcomment->User->find('list');
		$blogs = $this->Blogcomment->Blog->find('list');
		$this->set(compact('users', 'blogs'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for blogcomment', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Blogcomment->delete($id)) {
			$this->Session->setFlash(__('Blogcomment deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Blogcomment was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
