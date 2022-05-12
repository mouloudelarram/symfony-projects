<?php

namespace App\Controller;

use App\Entity\Customer;
use App\Form\CustomerType;
use App\Repository\CustomerRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
/**
 * @Route("/customer")
 */
class CustomerController extends AbstractController
{
    /**
     * @Route("/{role?client}", name="app_customer_index", methods={"GET"})
     */
    public function index(CustomerRepository $customerRepository, Request $request): Response
    {
        $role = $request->get('role');
        return $this->render('customer/index.html.twig', [
            'customers' => $customerRepository->findAll(),
            'role' => $role,
        ]);
    }

    /**
     * @Route("/{role?client}/new", name="app_customer_new", methods={"GET", "POST"})
     */
    public function new(Request $request, CustomerRepository $customerRepository, SluggerInterface $slugger): Response
    {
        $role = $request->get('role');
        $customer = new Customer();
        $form = $this->createForm(CustomerType::class, $customer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            
            /*  */
            $brochureFile = $form->get('profile')->getData();

            // this condition is needed because the 'brochure' field is not required
            // so the PDF file must be processed only when a file is uploaded
            if ($brochureFile) {
                $originalFilename = pathinfo($brochureFile->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$brochureFile->guessExtension();

                // Move the file to the directory where brochures are stored
                try {
                    $brochureFile->move(
                        $this->getParameter('brochures_directory'),
                        $newFilename
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }

                // updates the 'brochureFilename' property to store the PDF file name
                // instead of its contents
                $customer->setProfile($newFilename);/* 
                $customerRepository->add($customer); */
            }
            
            
            
            
            
            
            
            
            $customer->setCreatedAt();
            $customer->setUsername($customer->getFirstname(),$customer->getLastname());
            $customerRepository->add($customer);

            /* return $this->redirectToRoute('app_customer_index', [], Response::HTTP_SEE_OTHER); */
            return $this->render('customer/index.html.twig', [
                'customers' => $customerRepository->findAll(),
                'role' => $role,
            ]);
            
        }

        
        return $this->renderForm('customer/new.html.twig', [
            'customer' => $customer,
            'form' => $form,
            'role' => $role,
        ]);
    }

    /**
     * @Route("/{role?client}/{id}", name="app_customer_show", methods={"GET"})
     */
    public function show(Customer $customer, Request $request): Response
    {
        $role = $request->get('role');
        return $this->render('customer/show.html.twig', [
            'customer' => $customer,
            'role' => $role,
        ]);
    }

    /**
     * @Route("/{role?client}/{id}/edit", name="app_customer_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Customer $customer, CustomerRepository $customerRepository): Response
    {
        $role = $request->get('role');
        $form = $this->createForm(CustomerType::class, $customer);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $customerRepository->add($customer);
            /* return $this->redirectToRoute('app_customer_index', [], Response::HTTP_SEE_OTHER,); */
            return $this->render('customer/index.html.twig', [
                'customers' => $customerRepository->findAll(),
                'role' => $role,
            ]);
        }

        
        return $this->renderForm('customer/edit.html.twig', [
            'customer' => $customer,
            'form' => $form,
            'role' => $role,
        ]);
    }

    /**
     * @Route("/{role?client}/{id}", name="app_customer_delete", methods={"POST"})
     */
    public function delete(Request $request, Customer $customer, CustomerRepository $customerRepository): Response
    {
        
        if ($this->isCsrfTokenValid('delete'.$customer->getId(), $request->request->get('_token'))) {
            $customerRepository->remove($customer);
        }
        $role = $request->get('role');
        /* return $this->redirectToRoute('app_customer_index', [], Response::HTTP_SEE_OTHER); */
        return $this->render('customer/index.html.twig', [
            'customers' => $customerRepository->findAll(),
            'role' => $role,
        ]);
    }
}
