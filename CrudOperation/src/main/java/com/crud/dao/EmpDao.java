package com.crud.dao;

import java.util.List;

import com.crud.entity.Emp;

public interface EmpDao {

	public int saveEmp(Emp emp);

	public Emp getEmpById(int id);

	public List<Emp> getAllEmp();

	public void update(Emp emp);

	public void deleteEmp(int id);	
}
