<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $pagesModel = new Application_Model_DbTable_Pages();
        $homepage = $pagesModel->getHomePageInfo();
        
        $this->view->keywords = $homepage['keywords'];
        $this->view->description = $homepage['description'];
        $this->view->text = $homepage['text'];
    }

    public function aboutAction()
    {
        $pagesModel = new Application_Model_DbTable_Pages();
        $homepage = $pagesModel->getAboutPageInfo();
        
        $this->view->keywords = $homepage['keywords'];
        $this->view->description = $homepage['description'];
        $this->view->text = $homepage['text'];
    }

    public function servicesAction()
    {
    	$this->view->imagesPath = Zend_Registry::get('myimages');
    	
        $servicesModel = new Application_Model_DbTable_Sevices();
        $this->view->services = $servicesModel->getAllServices();
    }

    public function contactsAction()
    {
        $contactForm = new Application_Form_Contacts();
        
        if ($this->_request->isPost() && $contactForm->isValid($this->_request->getPost())) {
        	
        	$mail = new Zend_Mail('utf-8');
        	$mail->setBodyHtml('Вам пришло письмо от ' . $contactForm->getValue('email') . '<br /><br />' . $contactForm->getValue('text'))
        	     ->addTo('ti143utm@gmail.com')
        	     ->setSubject('Контактная форма');

        	
        		$config = array(
        		    'auth' => 'login',
        		    'username' => 'ti143utm@gmail.com',
        		    'password' => 'fcimti143'
        		);
        		
        		$connection = new Zend_Mail_Transport_Smtp('smtp.gmail.com', $config);
        	
        	
        	try {
        		$mail->send($connection);
        		
        		$this->view->message = 'Сообщение было отправлено. Спасибо!';
        	} catch (Exception $e) {
        		$this->view->message = 'Во время отправки возникла ошибка.';
        	}
        }
        
        $this->view->contactForm = $contactForm;
    }

    public function viewFullServiceAction()
    {
        $id = $this->_request->getParam('id');
        
        $this->view->navigation()->findOneById('services')->setActive(true);
        
        $servicesModel = new Application_Model_DbTable_Sevices();
        $this->view->service = $servicesModel->getServiceById($id);
    }


}









