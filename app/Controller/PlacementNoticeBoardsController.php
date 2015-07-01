<?php
class PlacementNoticeBoardsController extends AppController {

	var $name = 'PlacementNoticeBoards';
        public function recent() {
        $this->paginate = array(
            'limit' => 5,
            'order' => array(
                'PlacementNoticeBoard.created' => 'desc'
            )
        );
        $this->PlacementNoticeBoard->recursive = 0;
        $noticeboards = $this->PlacementNoticeBoard->find('all', array('PlacementNoticeBoard.active' => 1));
        return $noticeboards;
    }
	function index() {
		$this->PlacementNoticeBoard->recursive = 0;
		$this->set('placementNoticeBoards', $this->paginate());
	}

//	function view($id = null) {
//		if (!$id) {
//			$this->Session->setFlash(__('Invalid placement notice board', true));
//			$this->redirect(array('action' => 'index'));
//		}
//		$this->set('placementNoticeBoard', $this->PlacementNoticeBoard->read(null, $id));
//	}

        public function view($slug = null, $id = null) {

        $options = array('conditions' => array('PlacementNoticeBoard.slug' => $slug));
        $this->set('placementnoticeBoard', $this->PlacementNoticeBoard->find('first', $options));
        if ($this->Session->read('UserAuth.User.id') != 1):
            $this->render('view');
        else:
            $this->render('public_view');
        endif;
    }
	function add() {
		if (!empty($this->data)) {
			$this->PlacementNoticeBoard->create();
			if ($this->PlacementNoticeBoard->save($this->data)) {
				$this->Session->setFlash(__('The placement notice board has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The placement notice board could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid placement notice board', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->PlacementNoticeBoard->save($this->data)) {
				$this->Session->setFlash(__('The placement notice board has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The placement notice board could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->PlacementNoticeBoard->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for placement notice board', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->PlacementNoticeBoard->delete($id)) {
			$this->Session->setFlash(__('Placement notice board deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Placement notice board was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
        public function list_all_notice() {
        $this->PlacementNoticeBoard->recursive = 0;
        $placementnoticeboards = $this->PlacementNoticeBoard->find('all', array('PlacementNoticeBoard.active' => 1));
        return $placementnoticeboards;
    }
}
