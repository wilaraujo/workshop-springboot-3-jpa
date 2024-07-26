package com.waraujo.course.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.waraujo.course.entities.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {

}
