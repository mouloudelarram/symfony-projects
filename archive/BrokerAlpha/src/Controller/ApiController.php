<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use App\Entity\Item;
use App\Entity\Image;
use App\Entity\Categorie;

/**
 * @Route("/api", name="app_api")
 */
class ApiController extends AbstractController
{
    /**
     * @Route("/item", name="app_item_api")
     */
    public function getItems(): JsonResponse
    {
        $em = $this->getDoctrine()->getManager();
        $items = $em->getRepository(Item::class)->findAll();
        
        $data = array();
        foreach ($items as $element => $item) {
            $data[$element]['id'] = $item->getId();
            $data[$element]['label'] = $item->getLabel();
            $data[$element]['description'] = $item->getDescription();
            $data[$element]['createdAt'] = $item->getCreatedAt();
            $data[$element]['price'] = $item->getPrice();
            /* get author of this item */
                $data[$element]['author'] = $item->getAuthor()->getUsername();
            /* get categorie of this item */
                $data[$element]['categorie'] = $item->getCategorie()->getTitle();
            /* get all images of this item */
                $images = $em->getRepository(Image::class)->findBy(array('item' => $data[$element]['id']));
                $data[$element]['image']  = array();
                foreach ($images as $index => $image) {
                    $data[$element]['image'][$index]['id'] = $image->getId();
                    /* will change this to an other host */
                    $data[$element]['image'][$index]['path'] = 'http://192.168.43.185:8000/uploads/'.$image->getPath();
                }
            /* end */
        }
        return new JsonResponse($data, 200, ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8']);
    }

    /**
     * @Route("/categorie", name="app_categorie_api")
     */
    public function getCategories(): JsonResponse
    {
        $em = $this->getDoctrine()->getManager();
        $categories = $em->getRepository(Categorie::class)->findAll();
        
        $data = array();
        foreach ($categories as $element => $categorie) {
            $data[$element]['id'] = $categorie->getId();
            $data[$element]['title'] = $categorie->getTitle();
            $data[$element]['description'] = $categorie->getDescription();
            $data[$element]['image'] = 'http://192.168.43.185:8000/uploads/'.$categorie->getImage();
        }
        return new JsonResponse($data);
    }
    
}
