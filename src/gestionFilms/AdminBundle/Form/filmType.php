<?php

namespace gestionFilms\AdminBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class filmType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('titre', 'text', array(
            'label' => 'form.titre',
            'required' => true
        ))->add('resume', 'textarea', array(
            'label' => 'form.resume',
            'required' => true
        ))->add('genre', 'choice', array(
            'choices' => array(
                'Sélcetionner une catégorie' => 'form.categorie.titre',
                'Comédie' => 'form.categorie.comedie',
                'Action' => 'form.categorie.action',
                'Romantique' => 'form.categorie.romantic',
                'Drama' => 'form.categorie.drama',
                'Horreur' => 'form.categorie.horreur'
            ),
            'required' => true,
            'label' => 'form.categorie.label'
        ))->add('acteurPrincipal', 'text', array(
            'label' => 'form.acteurP',
            'required' => true
        ))->add('acteursescondaires', 'textarea', array(
            'label' => 'form.acteursS',
            'required' => true
        ))->add('anneeSortie', 'date', array(
            'label' => 'form.date',
            'required' => true
        ))->add('langue', 'choice', array(
            'choices' => array(
                'Sélectionner une langue' => 'form.langue.titre',
                'Français' => 'form.langue.francais',
                'Anglais' => 'form.langue.anglais',
                'Arabe' => 'form.langue.arabe',
                'Espagnol' => 'form.langue.espagnol'
            ),
            'label' => 'form.langue.label',
            'required' => true
        ))->add('realisateur', 'text', array(
            'label' => 'form.realisateur',
            'required' => true
        ))->add('duree', 'text', array(
            'label' => 'form.duree',
            'required' => true
                    
        ))->add('file', 'file', array(
            'label' => 'form.photo',
            'required' => false
        ));
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'gestionFilms\AdminBundle\Entity\film'
        ));
    }
    
    /**
     * @return string
     */
    public function getName()
    {
        return 'gestionfilms_adminbundle_film';
    }
}
