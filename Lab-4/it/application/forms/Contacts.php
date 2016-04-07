<?php

class Application_Form_Contacts extends Zend_Form
{

    public function init()
    {
        $email = new Zend_Form_Element_Text('email');
        $email->setLabel('Email:')
              ->setRequired(true)
              ->addValidator('NotEmpty', true,
                  array('messages' => array('isEmpty' => 'Введите email'))
              )
              ->addValidator('EmailAddress', true,
                  array('messages' => array('emailAddressInvalidFormat' => 'Введите правильный email'))
              );
              
        $text = new Zend_Form_Element_Textarea('text');
        $text->setLabel('Сообщение:')
             ->setRequired(true)
             ->addValidator('NotEmpty', true,
                  array('messages' => array('isEmpty' => 'Введите сообщение'))
             );
             
        $reCaptchaService = new Zend_Service_ReCaptcha(
            Zend_Registry::get('reCaptchaPublic'),
            Zend_Registry::get('reCaptchaPrivate'),
            null,
            array('lang' => 'ru', 'theme' => 'clean')
        );
        
        $reCaptcha = new Zend_Captcha_ReCaptcha();
        $reCaptcha->setService($reCaptchaService);
        
        $reCaptchaFormElement = new Zend_Form_Element_Captcha(
            'recaptcha',
            array('label' => 'Проверочный код', 'captcha' => $reCaptcha)
        );
        
        $reCaptchaFormElement->getValidator('ReCaptcha')
                             ->setMessages(array(
                                 'badCaptcha' => 'Вы ввели неверное значение',
                                 'missingValue' => 'Введите проверочный код'
                             ));
                             
        $submit = new Zend_Form_Element_Submit('submit');
        $submit->setLabel('Отправить');
                             
        $this->addElements(array($email, $text, $reCaptchaFormElement, $submit));
    }


}

