package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entity.Employeeinfo;

@Repository
public interface InfoEmployeeRepository extends JpaRepository<Employeeinfo, Long>{

	
}
