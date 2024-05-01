package com.october.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.october.web.model.Experience;

public interface ExperienceInfo extends JpaRepository<Experience, Integer> {

}
