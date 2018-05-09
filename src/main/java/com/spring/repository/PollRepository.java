package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.entity.Poll;

@Repository
public interface PollRepository extends JpaRepository<Poll, Integer>{

}
