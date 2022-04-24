package vn.ptit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.ptit.entities.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order,Integer> {
}
