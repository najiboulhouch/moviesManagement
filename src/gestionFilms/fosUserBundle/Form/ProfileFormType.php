<?php

/*
 * This file is part of the FOSUserBundle package.
 *
 * (c) FriendsOfSymfony <http://friendsofsymfony.github.com/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace gestionFilms\fosUserBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class ProfileFormType extends AbstractType
{

    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
		 $builder->add('nom', 'text', array('label' => 'form.nom','translation_domain' => 'FOSUserBundle'));
		 $builder->add('prenom', 'text', array('label' => 'form.prenom' , 'translation_domain' => 'FOSUserBundle'));
    }

 public function getParent()
    {
        return 'FOS\UserBundle\Form\Type\ProfileFormType';
        // Or for Symfony < 2.8
        // return 'fos_user_registration';
    }

    public function getBlockPrefix()
    {
        return 'app_user_profile';
    }

    // For Symfony 2.x
    public function getName()
    {
        return $this->getBlockPrefix();
    }
}
