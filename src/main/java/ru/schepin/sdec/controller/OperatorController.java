package ru.schepin.sdec.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ru.schepin.sdec.model.Order;
import ru.schepin.sdec.service.OrderServiceImpl;

import java.util.List;


@Controller
@RequestMapping(value = "/operator")
public class OperatorController {
    @Autowired
    private OrderServiceImpl orderService;

    @RequestMapping(value = "/all_orders", method = RequestMethod.GET)
    public @ResponseBody
    ModelAndView getAllOrders() {
        return createView();
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public @ResponseBody
    ModelAndView check(@ModelAttribute("orderDelete") Order order) {
        ModelAndView modelAndView = new ModelAndView();
        if (order.getNumber() == null) {
            return createView();
        } else {
            orderService.deleteOrder(order.getNumber());
            modelAndView.setViewName("operator/message_deleted");
            return modelAndView;
        }
    }

    private ModelAndView createView() {
        List<Order> allOrders = orderService.getAllOrders();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("order", allOrders);
        modelAndView.addObject("orderDelete", new Order());
        modelAndView.setViewName("operator/all_orders");
        return modelAndView;
    }
}

