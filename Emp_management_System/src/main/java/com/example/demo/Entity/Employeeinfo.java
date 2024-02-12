package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity

public class Employeeinfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
  
    private Long Id;
    
        private String name;
        private String city;
        private String contacts;
        private String department;
        private String Salary;

       
        public Employeeinfo() {
        }

      
        public Employeeinfo(String name, String city, String contacts, String department, String salary) {
            this.name = name;
            this.city = city;
            this.contacts = contacts;
            this.department = department;
            Salary = salary;
        }

       

        public String getName() {
            return name;
        }

        public Long getId() {
			return Id;
		}

		public void setName(String name) {
            this.name = name;
        }

        public String getCity() {
            return city;
        }

        public void setCity(String city) {
            this.city = city;
        }

        
        public String getContacts() {
			return contacts;
		}

		public void setContacts(String contacts) {
			this.contacts = contacts;
		}

		public String getDepartment() {
            return department;
        }

        public void setDepartment(String department) {
            this.department = department;
        }

        public String getSalary() {
            return Salary;
        }

        public void setSalary(String salary) {
            Salary = salary;
        }
    }
