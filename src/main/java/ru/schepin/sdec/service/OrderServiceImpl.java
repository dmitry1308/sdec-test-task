package ru.schepin.sdec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.schepin.sdec.model.Order;
import ru.schepin.sdec.repository.OrderRepository;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    private final OrderRepository repository;

    @Autowired
    public OrderServiceImpl(OrderRepository repository) {
        this.repository = repository;
    }

    @Override
    public Order getOrderById(Integer id) {
        return repository.getOne(id);
    }

    @Override
    public void saveOrder(Order order) {
        repository.save(order);
    }

    @Override
    public void updateOrder(Integer id, String message, boolean done) {

    }

    @Override
    public void deleteOrder(Integer id) {
        repository.delete(getOrderById(id));
    }

    @Override
    public List<Order> getAllOrders() {
        return repository.findAll();
    }
}
