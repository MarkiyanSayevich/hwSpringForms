package com.spring.service;

import java.util.List;

import com.spring.entity.Poll;

public interface PollService {

	void savePoll(Poll poll);
	
	Poll findPollById(int id);
	
	List<Poll> findAllPolls();
	
}
