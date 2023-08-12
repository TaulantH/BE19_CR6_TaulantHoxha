<?php

namespace App\Repository;

use App\Entity\Events;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Events>
 *
 * @method Events|null find($id, $lockMode = null, $lockVersion = null)
 * @method Events|null findOneBy(array $criteria, array $orderBy = null)
 * @method Events[]    findAll()
 * @method Events[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class EventsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Events::class);
    }

    /**
     * Find events by event type and search query.
     *
     * @param string $eventType
     * @param string $searchQuery
     *
     * @return Events[]
     */
    public function findByTypeAndSearch(string $searchQuery): array
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.type LIKE :query OR e.name LIKE :query OR e.place LIKE :query')
            ->setParameter('query', '%' . $searchQuery . '%')
            ->orderBy('e.id', 'ASC')
            ->getQuery()
            ->getResult();
    }
    public function findByTypeAndName(string $searchQuery): array
{
    return $this->createQueryBuilder('e')
        ->andWhere('e.type LIKE :query OR e.name LIKE :query')
        ->setParameter('query', '%' . $searchQuery . '%')
        ->orderBy('e.id', 'ASC')
        ->getQuery()
        ->getResult();
}
    public function findBySearchQuery(string $searchQuery): array
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.name LIKE :searchQuery OR e.description LIKE :searchQuery')
            ->setParameter('searchQuery', '%' . $searchQuery . '%')
            ->getQuery()
            ->getResult();
    }
    
    
}