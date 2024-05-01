package com.october.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.october.web.model.Employee;

@Repository
public interface EmployeeInfo extends JpaRepository<Employee, Integer> {

	public Employee findByEmail(String email);
}
