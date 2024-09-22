package com.crni99.bookstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.crni99.bookstore.model.Authority;

public interface AuthorityRepository extends JpaRepository<Authority, Long> {}
