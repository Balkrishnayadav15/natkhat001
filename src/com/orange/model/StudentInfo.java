package com.orange.model;

public class StudentInfo{
	
	private Student student = null;
	private Parents parents = null;
	private StudentDocs studentDocs = null;
	private Guardian guradian =  null;
	private TransportDetails tDetails = null;
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Parents getParents() {
		return parents;
	}
	public void setParents(Parents parents) {
		this.parents = parents;
	}
	public StudentDocs getStudentDocs() {
		return studentDocs;
	}
	public void setStudentDocs(StudentDocs studentDocs) {
		this.studentDocs = studentDocs;
	}
	public Guardian getGuradian() {
		return guradian;
	}
	public void setGuradian(Guardian guradian) {
		this.guradian = guradian;
	}
	public TransportDetails gettDetails() {
		return tDetails;
	}
	public void settDetails(TransportDetails tDetails) {
		this.tDetails = tDetails;
	}
	
}