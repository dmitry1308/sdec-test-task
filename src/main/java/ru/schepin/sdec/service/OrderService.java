package ru.schepin.sdec.service;

import ru.schepin.sdec.model.Order;

import java.util.List;

public interface OrderService {
    Order getOrderById(Integer id);

    void saveOrder(Order order);

    void updateOrder(Integer id, String message, boolean done);

    void deleteOrder(Integer id);

    List<Order> getAllOrders();
}
