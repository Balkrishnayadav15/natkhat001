package com.orange.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transportDetails")
public class TransportDetails {

	@Id
	private String scholarNo;
	private String mode;
	private String rootName;
	private String stop;
	private String receiveParsonStop;
	private String receivePersonSchool;
	
	public String getScholarNo() {
		return scholarNo;
	}
	public void setScholarNo(String scholarNo) {
		this.scholarNo = scholarNo;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getRootName() {
		return rootName;
	}
	public void setRootName(String rootName) {
		this.rootName = rootName;
	}
	public String getStop() {
		return stop;
	}
	public void setStop(String stop) {
		this.stop = stop;
	}
	public String getReceiveParsonStop() {
		return receiveParsonStop;
	}
	public void setReceiveParsonStop(String receiveParsonStop) {
		this.receiveParsonStop = receiveParsonStop;
	}
	public String getReceivePersonSchool() {
		return receivePersonSchool;
	}
	public void setReceivePersonSchool(String receivePersonSchool) {
		this.receivePersonSchool = receivePersonSchool;
	}

}
