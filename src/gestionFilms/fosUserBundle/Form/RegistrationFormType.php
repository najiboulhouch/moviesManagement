<?php

namespace gestionFilms\fosUserBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class RegistrationFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
		$builder
		->add('nom', 'text', array(
            'label' => 'form.nom',
            'required' => true
		))
		->add('prenom', 'text', array(
            'label' => 'form.prenom',
            'required' => true
		));	
    }
	
	 public function getParent()
    {
        return 'FOS\UserBundle\Form\Type\RegistrationFormType';
        // Or for Symfony < 2.8
        // return 'fos_user_registration';
    }

    public function getBlockPrefix()
    {
        return 'app_user_registration';
    }

    // For Symfony 2.x
    public function getName()
    {
        return $this->getBlockPrefix();
    }
}