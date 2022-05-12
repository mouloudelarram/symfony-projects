<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CustomerRepository;
use App\Repository\CategorieRepository;
use App\Repository\ItemRepository;
use App\Repository\ImageRepository;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="app_home")
     */
    public function index(CustomerRepository $customerRepository,CategorieRepository $categorieRepository, ItemRepository $itemRepository, ImageRepository $imageRepository): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'customer'=> $customerRepository->findAll(),
            'client' => $customerRepository->findByRoleField('client'),
            'admin' => $customerRepository->findByRoleField('admin'),
            'tenant' => $customerRepository->findByRoleField('tenant'),
            'categorie' => $categorieRepository->findAll(),
            'item' => $itemRepository->findAll(),
            'image' => $imageRepository->findAll(),
        ]);
    }
}
