package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.spring.entity.enums.Gender;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="poll")
@Getter @Setter
@NoArgsConstructor
@ToString(callSuper=true)
public class Poll extends BaseEntity{

	@Column(name="full_name")
	private String fullName;
	
	@Column(name="age")
	private String age;
	
	@Column(name="gender")
	private Gender gender;
	
	@Column(name="email")
	private String email;
	
	@Column(name="education")
	private String education;
	
	@Column(name="social_networks")
	private String[] socialNetworks;
	
	@Column(name="fav_prog_lang")
	private String favProgLang;
	
	@Column(name="operation")
	private String[] opSystem;
	
	@Column(name="experience")
	private String experience;
	
	@Column(name="prof_rank")
	private String profRank;
	
	@Column(name="technologies")
	private String[] technologies;
	
	@Column(name="wdyf")
	private String wdyf;
}
