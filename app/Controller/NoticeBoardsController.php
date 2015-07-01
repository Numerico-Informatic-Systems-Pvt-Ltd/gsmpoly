<?php

class NoticeBoardsController extends AppController {

    var $name = 'NoticeBoards';

    public function recent() {
        $this->paginate = array(
            'limit' => 5,
            'order' => array(
                'NoticeBoard.created' => 'desc'
            )
        );
        $this->NoticeBoard->recursive = 0;
        $noticeboards = $this->NoticeBoard->find('all', array('NoticeBoard.active' => 1));
        return $noticeboards;
    }

    function index() {
        $this->NoticeBoard->recursive = 0;
        $this->set('noticeBoards', $this->paginate());
    }

    /* function view($id = null) {
      if (!$id) {
      $this->Session->setFlash(__('Invalid notice board', true));
      $this->redirect(array('action' => 'index'));
      }
      $this->set('noticeBoard', $this->NoticeBoard->read(null, $id));
      } */

    public function featuredDocuments() {

        $this->autoRender = false;

        $this->NoticeBoard->recursive = -1;

        $documents = $this->NoticeBoard->find('all', array('fields' => array('NoticeBoard.title', 'NoticeBoard.url', 'NoticeBoard.description'), 'limit' => 6,
            'order' => array('NoticeBoard.id DESC')));

        return $documents;
    }

    public function view($slug = null, $id = null) {
        /*
          if (!$this->NoticeBoard->exists($id)) {
          throw new NotFoundException(__('Invalid notice board'));
          }
         */
        $options = array('conditions' => array('NoticeBoard.slug' => $slug));
        $this->set('noticeBoard', $this->NoticeBoard->find('first', $options));
        if ($this->Session->read('UserAuth.User.id') == 1):
            $this->render('view');
        else:
            $this->render('public_view');
        endif;
    }

    function add() {
        if (!empty($this->data)) {
            $this->NoticeBoard->create();
            if ($this->NoticeBoard->save($this->data)) {
                $this->Session->setFlash(__('The notice board has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The notice board could not be saved. Please, try again.', true));
            }
        }
    }

    function edit($id = null) {
        if (!$id && empty($this->data)) {
            $this->Session->setFlash(__('Invalid notice board', true));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->data)) {
            if ($this->NoticeBoard->save($this->data)) {
                $this->Session->setFlash(__('The notice board has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The notice board could not be saved. Please, try again.', true));
            }
        }
        if (empty($this->data)) {
            $this->data = $this->NoticeBoard->read(null, $id);
        }
    }

    function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for notice board', true));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->NoticeBoard->delete($id)) {
            $this->Session->setFlash(__('Notice board deleted', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Notice board was not deleted', true));
        $this->redirect(array('action' => 'index'));
    }

    public function list_all_notice() {
        $this->NoticeBoard->recursive = 0;
        $noticeboards = $this->NoticeBoard->find('all', array('NoticeBoard.active' => 1));
        return $noticeboards;
    }

}
