<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\File;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('name', null, [
            'attr' => ['class' => 'form-control'],
        ])
        ->add('date_time', null, [
            'attr' => ['class' => 'form-control'],
            "widget" => "single_text",
        ])
            ->add('description', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('pictureUrl', FileType::class, [
                'label' => 'Upload Picture',
 //unmapped means that is not associated to any entity property
                'mapped' => false,
 //not mandatory to have a file
                'required' => false,
 
 //in the associated entity, so you can use the PHP constraint classes as validators
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/png',
                            'image/jpeg',
                            'image/jpg',
                        ],
                        'mimeTypesMessage' => 'Please upload a valid image file',
                    ])
                ],
            ])
            ->add('capacity', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('email', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('phone_number', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('street_name', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('zip', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('city_name', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('url', null, [
                'attr' => ['class' => 'form-control'],
            ])
            ->add('type', null, [
                'attr' => ['class' => 'form-control'],
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
