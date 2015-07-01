<?php

class BlogsController extends AppController {

    public $components = array('Paginator', 'Upload');
    public $paginate = array(
        'limit' => 1,
        'order' => array(
            'Blog.id' => 'desc'
        )
    );
    var $name = 'Blogs';

    function index() {
        $this->Blog->recursive = 0;
        $this->set('blogs', $this->paginate());
    }

    function view($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid blog', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->set('blog', $this->Blog->read(null, $id));
    }

    function blog_all() {
        $this->Blog->recursive = 0;
        $blogs = $this->Blog->find('all', array('Blog.active' => 1));
        return $blogs;
    }

    function blog_details($slug = NULL) {
        $this->loadModel('Blogcomment');
        $this->set('blog', $this->Blog->find('all', array('conditions' => array('Blog.slug' => $slug))));

        if (!empty($this->data)) {
            $this->Blogcomment->create();
            if ($this->Blogcomment->save($this->data)) {
                $this->Session->setFlash(__('The Blogcomment has been saved', true));
                $this->redirect(array('action' => 'blog_all'));
            } else {
                $this->Session->setFlash(__('The Blogcomment could not be saved. Please, try again.', true));
            }
        }
    }

    /* function add() {

      //  $this->redirect("/app/webroot/payment/TestMoto.php"); //http://gsmpoly.local/app/webroot/payment/test.php

      //sdebug($_POST);

      if ($this->request->is('post')) {
      $folderName = 'blogs';
      $slug = substr(slug($this->request->data['Blog']['slug']), 0, 40);
      $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 600, 150, $folderName, false, $slug);
      $this->request->data['Blog']['image'] = $image_path;
      $this->Blog->create();
      if ($this->Blog->save($this->data)) {
      $this->Session->setFlash(__('The blog has been saved', true));
      $this->redirect(array('action' => 'index'));
      } else {
      $this->Session->setFlash(__('The blog could not be saved. Please, try again.', true));
      }
      }
      $users = $this->Blog->User->find('list');
      $this->set(compact('users'));
      }
     */

    function add() {
        //debug($_SERVER['DOCUMENT_ROOT']);

        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/BillToAddress.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/CardInfo.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/Merchant.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/MPIData.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/ShipToAddress.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/PGResponse.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/PostLibPHP.php");
        include($_SERVER['DOCUMENT_ROOT'] . "/app/webroot/payment/Sfa/PGReserveData.php");

        $oMPI = new MPIData();
        $oCI = new CardInfo();
        $oPostLibphp = new PostLibPHP();
        $oMerchant = new Merchant();
        $oBTA = new BillToAddress();
        $oSTA = new ShipToAddress();
        $oPGResp = new PGResponse();
        $oPGReserveData = new PGReserveData();
        
        $oMerchant->setMerchantDetails("96039227", "96039227", "96039227", "10.10.10.238", rand() . "", "Ord1234", $_SERVER['HTTP_HOST'] . "/app/webroot/payment/SFAResponse.php", "POST", "INR", "INV123", "req.Sale", "100", "", "Ext1", "true", "Ext3", "Ext4", "New PHP");

         $oBTA->setAddressDetails("CID", "Tester", "Aline1", "Aline2", "Aline3", "Pune", "A.P", "48927489", "IND", "tester@soft.com");

        $oSTA->setAddressDetails("Add1", "Add2", "Add3", "City", "State", "443543", "IND", "sad@df.com");

        #$oMPI->setMPIRequestDetails("1245","12.45","356","2","2 shirts","12","20011212","12","0","","image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, application/x-shockwave-flash, */*","Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)");
        //debug( $oPostLibphp);
       // debug( $oMerchant);
       // debug( $oMerchant);
       // debug( $oMerchant);
        $oPGResp = $oPostLibphp->postSSL($oBTA, $oSTA, $oMerchant, $oMPI, $oPGReserveData);
        
        if ($oPGResp->getRespCode() == '000') {
            $url = $oPGResp->getRedirectionUrl();
            #$url =~ s/http/https/;
            #print "Location: ".$url."\n\n";
            #header("Location: ".$url);
            redirect($url);
        } else {
            print "Error Occured.<br>";
            print "Error Code:" . $oPGResp->getRespCode() . "<br>";
            print "Error Message:" . $oPGResp->getRespMessage() . "<br>";
        }
    }

    function edit($id = null) {
        /* if (!$id && empty($this->data)) {
          $this->Session->setFlash(__('Invalid blog', true));
          $this->redirect(array('action' => 'index'));
          }
          if (!empty($this->data)) {
          if ($this->Blog->save($this->data)) {
          $this->Session->setFlash(__('The blog has been saved', true));
          $this->redirect(array('action' => 'index'));
          } else {
          $this->Session->setFlash(__('The blog could not be saved. Please, try again.', true));
          }
          }
          if (empty($this->data)) {
          $this->data = $this->Blog->read(null, $id);
          }
          $users = $this->Blog->User->find('list');
          $this->set(compact('users')); */
        $this->Blog->id = $id;
        if (!$this->Blog->exists()) {
            throw new NotFoundException(__('Invalid Blog'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {

            $slug = substr(slug($this->request->data['Blog']['slug']), 0, 40);
            $folderName = 'blogs';
            $image_path = $this->Upload->upload_image_and_thumbnail($this->request->data, "name1", 600, 150, $folderName, false, $slug);

            if (strlen($image_path) > 4):
                $this->request->data['Blog']['image'] = $image_path;
                //$detail = $this->Product->findById($id);
                $filename = $detail['Blog']['slug'];
                $this->Upload->delete_image($filename, $folderName);
            endif;


            if ($this->Blog->save($this->request->data)) {
                $this->Session->setFlash(__('The blog has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The blog could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->Blog->read(null, $id);
        }
        $users = $this->Blog->User->find('list');
        $this->set(compact('users'));
    }

    function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for blog', true));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->Blog->delete($id)) {
            $this->Session->setFlash(__('Blog deleted', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('Blog was not deleted', true));
        $this->redirect(array('action' => 'index'));
    }

}
