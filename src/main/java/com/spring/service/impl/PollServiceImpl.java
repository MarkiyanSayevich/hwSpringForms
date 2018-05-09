package com.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.entity.Poll;
import com.spring.repository.PollRepository;
import com.spring.service.PollService;

@Service
public class PollServiceImpl implements PollService{

	@Autowired private PollRepository pollRepository;
	
	@Override
	public void savePoll(Poll poll) {
		pollRepository.save(poll);
	}

	@Override
	public Poll findPollById(int id) {
		return pollRepository.getOne(id);
	}

	@Override
	public List<Poll> findAllPolls() {
		return pollRepository.findAll();
	}

}
