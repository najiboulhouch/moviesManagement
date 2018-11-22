<?php

namespace gestionFilms\AdminBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use gestionFilms\AdminBundle\Entity\film;
use gestionFilms\AdminBundle\Form\filmType;

/**
 * film controller.
 *
 */
class filmController extends Controller
{
    
    public function acceuilAction()
    {
        $em       = $this->getDoctrine()->getManager();        
        $entities = $em->getRepository('gestionFilmsAdminBundle:film')->findAll();        
        return $this->render('gestionFilmsAdminBundle:film:acceuilFilms.html.twig', array(
            'entities' => $entities
        ));
    }

    public function ajouterFilmAction(Request $request)
    {
        $entity = new film();
        $form   = $this->createCreateForm($entity);
        $form->handleRequest($request);
        
        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($entity);
            $em->flush();
            
            return $this->redirect($this->generateUrl('film'));
        }
        
        return $this->render('gestionFilmsAdminBundle:film:ajouterFilm.html.twig', array(
            'entity' => $entity,
            'form' => $form->createView()
        ));
    }
    
    private function createCreateForm(film $entity)
    {
        $form = $this->createForm(new filmType(), $entity, array(
            'action' => $this->generateUrl('film_create'),
            'method' => 'POST'
        ));
        
        $form->add('submit', 'submit', array(
            'label' => 'form.ajouter'
        ));
        
        return $form;
    }
    
    public function formulaireAjouterFilmAction()
    {
        $entity = new film();
        $form   = $this->createCreateForm($entity);
        
        return $this->render('gestionFilmsAdminBundle:film:ajouterFilm.html.twig', array(
            'entity' => $entity,
            'form' => $form->createView()
        ));
    }
    
    public function afficherDetailFilmAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        
        $entity = $em->getRepository('gestionFilmsAdminBundle:film')->find($id);
        
        if (!$entity) {
            throw $this->createNotFoundException('Unable to find film entity.');
        }
        
        
        return $this->render('gestionFilmsAdminBundle:film:afficherFilm.html.twig', array(
            'entity' => $entity
        ));
    }
    
    public function formulaireModificationAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        
        $entity = $em->getRepository('gestionFilmsAdminBundle:film')->find($id);
        
        if (!$entity) {
            throw $this->createNotFoundException('Unable to find film entity.');
        }
        
        $editForm = $this->createEditForm($entity);
        
        return $this->render('gestionFilmsAdminBundle:film:modifierFilm.html.twig', array(
            'entity' => $entity,
            'form' => $editForm->createView()
        ));
    }

    private function createEditForm(film $entity)
    {
        $form = $this->createForm(new filmType(), $entity, array(
            'action' => $this->generateUrl('film_update', array(
                'id' => $entity->getId()
            )),
            'method' => 'POST'
        ));
        
        $form->add('submit', 'submit', array('label' => 'form.mettre_film'));        
        return $form;
    }
    
    public function modificationFilmAction(Request $request, $id)
    {
        $em = $this->getDoctrine()->getManager();
        
        $entity = $em->getRepository('gestionFilmsAdminBundle:film')->find($id);
        
        if (!$entity) {
            throw $this->createNotFoundException('Unable to find film entity.');
        }
        
        $editForm = $this->createEditForm($entity);
        $editForm->handleRequest($request);
        
        if ($editForm->isValid()) {
            $em->flush();
            
            return $this->redirect($this->generateUrl('film'));
        }
        
        return $this->render('gestionFilmsAdminBundle:film:modifierFilm.html.twig', array(
            'entity' => $entity,
            'form' => $editForm->createView()
        ));
    }

    public function supprimerFilmAction($id, $type)
    {        
        
        $em     = $this->getDoctrine()->getManager();
        $entity = $em->getRepository('gestionFilmsAdminBundle:film')->find($id);
        
        if (!$entity) {
            throw $this->createNotFoundException('Unable to find film entity.');
        }
        
        $em->remove($entity);
        $em->flush();
        if ($type == 0) {
            return $this->redirect($this->generateUrl('film'));
        } elseif ($type == 1) {
            return $this->redirect($this->generateUrl('accueilUser'));
        }
        
        
    }
    
    public function accueilUserAction()
    {
        $em       = $this->getDoctrine()->getManager();
        $entities = $em->getRepository('gestionFilmsAdminBundle:film')->findAll();
        return $this->render('gestionFilmsAdminBundle::accueilUser.html.twig', array(
            'entities' => $entities
        ));
    }
    
    public function afficherFilmAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        
        $entity = $em->getRepository('gestionFilmsAdminBundle:film')->find($id);
        
        if (!$entity) {
            throw $this->createNotFoundException('Unable to find film entity.');
        }
        
        
        return $this->render('gestionFilmsAdminBundle::afficherFilm.html.twig', array(
            'entity' => $entity
        ));
    }
    
    public function changerLangueAction()
    {
        return $this->redirect($this->generateUrl('accueilUser'));
    }
    
    public function genererFluxRssAction()
    {
        $repository = $this->getDoctrine()->getRepository('gestionFilmsAdminBundle:film');
        $query      = $repository->createQueryBuilder('f')->orderBy('f.id', 'desc')->setMaxResults(10)->getQuery();
        $entities   = $query->getResult();
        return $this->render('gestionFilmsAdminBundle::flux.xml.twig', array(
            'entities' => $entities,
            'feedId' => sha1($this->get('router')->generate('flux_rss'))
        ));
    }
    
    public function recherhceFilmAction()
    {
        $em       = $this->getDoctrine()->getManager();
        $entities = $em->getRepository('gestionFilmsAdminBundle:film')->findAll();
        return $this->render('gestionFilmsAdminBundle::rechercheFilm.html.twig', array(
            'entities' => $entities
        ));
    }
    
    public function recherhceFilmAjaxAction(Request $request, $id)
    {
        if ($request->isXmlHttpRequest()) {
            $em     = $this->getDoctrine()->getManager();
            $entity = $em->getRepository('gestionFilmsAdminBundle:film')->find($id);
            return $this->render('gestionFilmsAdminBundle::resultat.html.twig', array(
                'entity' => $entity
            ));
        }
        
    }
    
}