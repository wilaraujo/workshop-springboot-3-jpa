package com.waraujo.course.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.waraujo.course.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

}
