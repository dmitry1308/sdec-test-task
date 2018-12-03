package ru.schepin.sdec.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ru.schepin.sdec.model.Order;


public interface OrderRepository extends JpaRepository<Order, Integer> {

}

