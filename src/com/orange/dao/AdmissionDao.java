package com.orange.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.StudentInfo;
import com.orange.model.TransportDetails;
import com.orange.util.DBUtil;
import com.orange.util.DateUtility;
import com.orange.util.StudentQueryUtil;

public class AdmissionDao {

	String dbType = null;
	public AdmissionDao(String dbType) {
		this.dbType = dbType;
	}
	public AdmissionDao() {
	}
	
	public long getNextRegistrationNumber(Connection conn) throws Exception {
		long nextRegNum = 000;
		PreparedStatement stmt=null;
		String query = "select max(id) from studentInfo";
		try {
			stmt = conn.prepareStatement(query);

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				nextRegNum = rs.getLong(1);
			}

		}catch(Exception e) {
			throw e;
		} finally  {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return nextRegNum+001;
	}
	
	public boolean saveStudentInfo(Student student,TransportDetails tDetails,Guardian guardian,StudentDocs docs,Parents parent, String franchise){
		
		boolean isSave = false;
		Connection conn=null;
        
	        try {
	        	conn = DBUtil.getConnection(dbType);
	        	long id = getNextRegistrationNumber(conn);
	        	String scholarId = String.format("NAT@%03d", id);
	        	
	        	student.setScholarNo(scholarId);
	        	tDetails.setScholarNo(scholarId);
	        	guardian.setScholarNo(scholarId);
	        	docs.setScholarNo(scholarId);
	        	parent.setScholarNo(scholarId);
	        	
	        	saveStudent(id,student,conn);
	        	saveTransportDetails(id,tDetails,conn);
	        	saveGuardian(id,guardian,conn);
	        	saveDocs(id,docs,conn);
	        	saveParents(id,parent,conn);
	            
	            conn.commit();
	            isSave = true;
	        } catch(Exception e) {
	        	e.printStackTrace();
	        	try{
	       		 if(conn!=null)
	                   conn.rollback();
	             }catch(SQLException se2){
	                se2.printStackTrace();
	             }
	        }finally  {
		           try {
					if(null!=conn){
		        	   conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
		return isSave;
	}

	
	private void saveParents(long id, Parents parent, Connection conn) throws Exception {
		  PreparedStatement stmt=null;
		  try {
	        	//conn = DBUtil.getConnection(dbType);
	        	String parentInsertQuery = "insert into parentsDetails (MotherAccNo, MotherIfscCode, familysssmid, fatherAccNo, fatherAdharNo, "
	    				+ "fatherAge, fatherBankName, fatherDesignation, fatherIfscCode, fatherIncome, fatherMobNo, fatherName, "
	    				+ "fatherQualification, montherIncome, motherAdharNo, motherAge, motherBankName, motherDesignation, motherMobNo, "
	    				+ "motherName, motherQualification, resAddress, scholarNo,id) "
	    				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
	        	
	            stmt = conn.prepareStatement(parentInsertQuery);
	            stmt.setString(1, parent.getMotherAccNo());
	            stmt.setString(2, parent.getMotherIfscCode());
	            stmt.setString(3, parent.getFamilysssmid());
	            stmt.setString(4, parent.getFatherAccNo());
	            stmt.setString(5, parent.getFatherAdharNo());
	            stmt.setString(6, parent.getFatherAge());
	            stmt.setString(7, parent.getFatherBankName());
	            stmt.setString(8, parent.getFatherDesignation());
	            stmt.setString(9, parent.getFatherIfscCode());
	            stmt.setString(10, parent.getFatherIncome());
	            stmt.setString(11, parent.getFatherMobNo());
	            stmt.setString(12, parent.getFatherName());
	            stmt.setString(13, parent.getFatherQualification());
	            stmt.setString(14, parent.getMontherIncome());
	            stmt.setString(15, parent.getMotherAdharNo());
	            stmt.setString(16, parent.getMotherAge());
	            stmt.setString(17, parent.getMotherBankName());
	            stmt.setString(18, parent.getMotherDesignation());
	            stmt.setString(19, parent.getMotherMobNo());
	            stmt.setString(20, parent.getMotherName());
	            stmt.setString(21, parent.getMotherQualification());
	            stmt.setString(22, parent.getResAddress());
	            stmt.setString(23, parent.getScholarNo());
	            stmt.setLong(24, id);
	            
	            stmt.executeUpdate();
	        }catch(Exception e) {
	        	throw e;
	        }finally  {
		           try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	}
	private void saveDocs(long id, StudentDocs docs, Connection conn) throws Exception {
		String docInsertQuery = "insert into studentDocuments (adharCard, casteCertificate, docsBankAccNo, docsBankName, docsIfscCode, "
				+ "fatherAdhar, fatherCaste, lastClass, markSheet, motherAdhar, sssmid, studentDob, tcIssued, tcReceived, scholarNo,id) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
		PreparedStatement stmt=null;
		  try {
	        	//conn = DBUtil.getConnection(dbType);
	        	
	            stmt = conn.prepareStatement(docInsertQuery);
	            stmt.setString(1, docs.getAdharCard());
	            stmt.setString(2, docs.getCasteCertificate());
	            stmt.setString(3, docs.getDocsBankAccNo());
	            stmt.setString(4, docs.getDocsBankName());
	            stmt.setString(5, docs.getDocsIfscCode());
	            stmt.setString(6, docs.getFatherAdhar());
	            stmt.setString(7, docs.getFatherCaste());
	            stmt.setString(8, docs.getLastClass());
	            stmt.setString(9, docs.getMarkSheet());
	            stmt.setString(10, docs.getMotherAdhar());
	            stmt.setString(11, docs.getSssmid());
	            stmt.setString(12, docs.getStudentDob());
	            stmt.setString(13, docs.getTcIssued());
	            stmt.setString(14, docs.getTcReceived());
	            stmt.setString(15, docs.getScholarNo());
	            stmt.setLong(16, id);
	            int row = stmt.executeUpdate();
	           
	        }catch(Exception e) {
	        	throw e;
	        }finally  {
		           try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	}
	private void saveGuardian(long id, Guardian guardian, Connection conn) throws Exception {
		String guardianInsertQuery = "insert into gurdianDetails (guardianAdharNo, guardianMobileNo, guardianName, guardianresAddress, "
				+ "parents, scholarNo,id) values (?, ?, ?, ?, ?, ?,?)";
		PreparedStatement stmt=null;
		  try {
	        	//conn = DBUtil.getConnection(dbType);
	        	
	            stmt = conn.prepareStatement(guardianInsertQuery);
	            stmt.setString(1, guardian.getGuardianAdharNo());
	            stmt.setString(2, guardian.getGuardianMobileNo());
	            stmt.setString(3, guardian.getGuardianName());
	            stmt.setString(4, guardian.getGuardianresAddress());
	            stmt.setString(5, guardian.getParents());
	            stmt.setString(6, guardian.getScholarNo());
	            stmt.setLong(7, id);
	            int row = stmt.executeUpdate();
	           
	        }catch(Exception e) {
	        	throw e;
	        }finally  {
		           try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	}
	private void saveTransportDetails(long id, TransportDetails tDetails, Connection conn) throws Exception {
		String tranportInsertQuery = "insert into transportDetails (mode, receiveParsonStop, receivePersonSchool, rootName, stop, "
				+ "scholarNo,id) values (?, ?, ?, ?, ?, ?,?)";
		PreparedStatement stmt=null;
		  try {
	        	//conn = DBUtil.getConnection(dbType);
	        	
	            stmt = conn.prepareStatement(tranportInsertQuery);
	            stmt.setString(1, tDetails.getMode());
	            stmt.setString(2, tDetails.getReceiveParsonStop());
	            stmt.setString(3, tDetails.getReceivePersonSchool());
	            stmt.setString(4, tDetails.getRootName());
	            stmt.setString(5, tDetails.getStop());
	            stmt.setString(6, tDetails.getScholarNo());
	            stmt.setLong(7, id);
	            int row = stmt.executeUpdate();
	           
	        }catch(Exception e) {
	        	throw e;
	        }finally  {
		           try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
		
	}
	private void saveStudent(long id, Student student, Connection conn) throws Exception {
		String insertStudent = "insert into studentInfo (adharNo, admissionClass, admissionDate, admissionSession, bankAccNo, "
    			+ "bankName, bloodGroup, caste, category, createdDate, currentSchoolName, dobFigure, dobWords, gender, ifscCode, "
    			+ "lastClassAdmission, lastSchoolName, lastSessionAdmission, lastSessionLeave, lastStudyMedium, motherTounge, "
    			+ "name, nationality, passedClass, percentage, religion, rte, scholarNo, sssmiNo, studyMedium,id,admissionSection) "
    			+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";
		PreparedStatement stmt=null;
		  try {
	        	//conn = DBUtil.getConnection(dbType);
	        	
	            stmt = conn.prepareStatement(insertStudent);
	            stmt.setString(1, student.getAdharNo());
	            stmt.setString(2, student.getAdmissionClass());
	            stmt.setString(3, student.getAdmissionDate());
	            stmt.setString(4, student.getAdmissionSession());
	            stmt.setString(5, student.getBankAccNo());
	            stmt.setString(6, student.getBankName());
	            stmt.setString(7, student.getBloodGroup());
	            stmt.setString(8, student.getCaste());
	            stmt.setString(9, student.getCategory());
	            stmt.setDate(10, new Date(student.getCreatedDate().getTime()));
	            stmt.setString(11, student.getCurrentSchoolName());
	            stmt.setDate(12, DateUtility.utilDateToMyDate(student.getDob()));
	            stmt.setString(13, student.getDobWords());
	            stmt.setString(14, student.getGender());
	            stmt.setString(15, student.getIfscCode());
	            stmt.setString(16, student.getLastClassAdmission());
	            stmt.setString(17, student.getLastSchoolName());
	            stmt.setString(18, student.getLastSessionAdmission());
	            stmt.setString(19, student.getLastSessionLeave());
	            stmt.setString(20, student.getLastStudyMedium());
	            stmt.setString(21, student.getMotherTounge());
	            stmt.setString(22, student.getName());
	            stmt.setString(23, student.getNationality());
	            stmt.setString(24, student.getPassedClass());
	            stmt.setString(25, student.getPercentage());
	            stmt.setString(26, student.getReligion());
	            stmt.setString(27, student.getRte());
	            stmt.setString(28, student.getScholarNo());
	            stmt.setString(29, student.getSssmiNo());
	            stmt.setString(30, student.getStudyMedium());
	            stmt.setLong(31, id);
	            stmt.setString(32, student.getAdmissionSection());
	            int row = stmt.executeUpdate();
	           
	        }catch(Exception e) {
	        	throw e;
	        }finally  {
		           try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	}
	public boolean saveStudentInfoList(List<Student> studentList, List<Parents> parentsList,
			List<StudentDocs> studentDocsList, List<Guardian> guardianList, List<TransportDetails> transportList) {
	        
	        boolean isSave = false;
			Connection conn=null;
	        
		        try {
		        	conn = DBUtil.getConnection(dbType);
		        	long id = getNextRegistrationNumber(conn);
		        	long incrementId = id;
		        	
		        	for(Student student:studentList){
		        		saveStudent(incrementId,student,conn);
		        		incrementId++;
		        	}
		        	incrementId = id;
		        	for(Parents parent:parentsList){
		        		saveParents(incrementId,parent,conn);
		        		incrementId++;
		        	}
		        	incrementId = id;
		        	for(StudentDocs studentdosc:studentDocsList){
		        		saveDocs(incrementId,studentdosc,conn);
		        		incrementId++;
		        	}
		        	incrementId = id;
		        	for(Guardian guardian:guardianList){
		        		saveGuardian(incrementId,guardian,conn);	
		        		incrementId++;
		        	}
		        	incrementId = id;
		        	for(TransportDetails transportDetails:transportList){
		        		saveTransportDetails(incrementId,transportDetails,conn);
		        		incrementId++;
		        	}
		        	
		            conn.commit();
		            isSave = true;
		        } catch(Exception e) {
		        	e.printStackTrace();
		        	try{
		       		 if(conn!=null)
		                   conn.rollback();
		             }catch(SQLException se2){
		                se2.printStackTrace();
		             }
		        }finally  {
			           try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
		        }
			return isSave;
			
	}
	
	public List<StudentInfo> getStudentByScholar(String scholarNo){
		
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + " where s.scholarNo like ? order by id desc");
			stmt.setString(1, "%"+scholarNo+"%");
			ResultSet rs = stmt.executeQuery();
			allSelStudent = getStudentInfo(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
	
public List<StudentInfo> getStudentByName(String name){
		
		List<StudentInfo> allSelStudent = null ;
		Connection conn=null;
		PreparedStatement stmt=null;
		try {
			conn = DBUtil.getConnection(dbType);
			stmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + " where s.name like ? order by id desc");
			stmt.setString(1, "%"+name+"%");
			ResultSet rs = stmt.executeQuery();
			allSelStudent = getStudentInfo(rs);
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allSelStudent;
	}
	 
	private List<StudentInfo> getStudentInfo(ResultSet rs) throws SQLException{
		List<StudentInfo> allSelStudent = new ArrayList<StudentInfo>();
		while(rs.next()) {
			Student student = new Student();
			Parents parents = new Parents();
			StudentDocs studentDocs = new StudentDocs();
			Guardian guradian = new Guardian();
			TransportDetails tDetails = new TransportDetails();
			
			student.setAdharNo(rs.getString("adharNo"));
			student.setAdmissionClass(rs.getString("admissionClass"));
			student.setAdmissionDate(rs.getString("admissionDate"));
			student.setAdmissionSession(rs.getString("admissionSession"));
			student.setBankAccNo(rs.getString("bankAccNo"));
			student.setBankName(rs.getString("bankName"));
			student.setBloodGroup(rs.getString("bloodGroup"));
			student.setCaste(rs.getString("caste"));
			student.setCategory(rs.getString("category"));
			//student.setCreatedDate(rs.getDate("date"));
			student.setCurrentSchoolName(rs.getString("currentSchoolName"));
			student.setDobFigure(rs.getString("dobFigure"));
			student.setDobWords(rs.getString("dobWords"));
			student.setGender(rs.getString("gender"));
			student.setId(rs.getLong("id"));
			student.setIfscCode(rs.getString("ifscCode"));
			student.setLastClassAdmission(rs.getString("lastClassAdmission"));
			student.setLastSchoolName(rs.getString("lastSchoolName"));
			student.setLastSessionAdmission(rs.getString("lastSessionAdmission"));
			student.setLastSessionLeave(rs.getString("lastSessionLeave"));
			student.setLastStudyMedium(rs.getString("lastStudyMedium"));
			student.setMotherTounge(rs.getString("motherTounge"));
			student.setName(rs.getString("name"));
			student.setNationality(rs.getString("nationality"));
			student.setPassedClass(rs.getString("passedClass"));
			student.setPercentage(rs.getString("percentage"));
			student.setReligion(rs.getString("religion"));
			student.setRte(rs.getString("rte"));
			student.setScholarNo(rs.getString("scholarNo"));
			student.setSssmiNo(rs.getString("sssmiNo"));
			student.setStudyMedium(rs.getString("studyMedium"));
			
			//Set parents info
			parents.setFamilysssmid(rs.getString("familysssmid"));
			parents.setFatherAccNo(rs.getString("fatherAccNo"));
			parents.setFatherAdharNo(rs.getString("fatherAdharNo"));
			parents.setFatherAge(rs.getString("fatherAge"));
			parents.setFatherBankName(rs.getString("fatherBankName"));
			parents.setFatherDesignation(rs.getString("fatherDesignation"));
			parents.setFatherIfscCode(rs.getString("fatherIfscCode"));
			parents.setFatherIncome(rs.getString("fatherIncome"));
			parents.setFatherMobNo(rs.getString("fatherMobNo"));
			parents.setFatherName(rs.getString("fatherName"));
			parents.setFatherQualification(rs.getString("fatherQualification"));
			parents.setMontherIncome(rs.getString("montherIncome"));
			parents.setMotherAccNo(rs.getString("motherAccNo"));
			parents.setMotherAdharNo(rs.getString("motherAdharNo"));
			parents.setMotherAge(rs.getString("motherAge"));
			parents.setMotherBankName(rs.getString("motherBankName"));
			parents.setMotherDesignation(rs.getString("motherDesignation"));
			parents.setMotherIfscCode(rs.getString("motherIfscCode"));
			parents.setMotherMobNo(rs.getString("motherMobNo"));
			parents.setMotherName(rs.getString("motherName"));
			parents.setMotherQualification(rs.getString("motherQualification"));
			parents.setResAddress(rs.getString("resAddress"));
			parents.setScholarNo(rs.getString("scholarNo"));
			
			//student docs
			studentDocs.setAdharCard(rs.getString("adharCard"));
			studentDocs.setCasteCertificate(rs.getString("casteCertificate"));
			studentDocs.setDocsBankAccNo(rs.getString("docsBankAccNo"));
			studentDocs.setDocsBankName(rs.getString("docsBankName"));
			studentDocs.setDocsIfscCode(rs.getString("docsIfscCode"));
			studentDocs.setFatherAdhar(rs.getString("fatherAdhar"));
			studentDocs.setFatherCaste(rs.getString("fatherCaste"));
			studentDocs.setLastClass(rs.getString("lastClass"));
			studentDocs.setMarkSheet(rs.getString("markSheet"));
			studentDocs.setMotherAdhar(rs.getString("motherAdhar"));
			studentDocs.setScholarNo(rs.getString("scholarNo"));
			studentDocs.setSssmid(rs.getString("sssmid"));
			studentDocs.setStudentDob(rs.getString("studentDob"));
			studentDocs.setTcIssued(rs.getString("tcIssued"));
			studentDocs.setTcReceived(rs.getString("tcReceived"));
			
			//Guardian
			guradian.setGuardianAdharNo(rs.getString("guardianAdharNo"));
			guradian.setGuardianMobileNo(rs.getString("guardianMobileNo"));
			guradian.setGuardianName(rs.getString("guardianName"));
			guradian.setGuardianresAddress(rs.getString("guardianresAddress"));
			guradian.setParents(rs.getString("parents"));
			guradian.setScholarNo(rs.getString("scholarNo"));
			
			
			//Transport Details
			tDetails.setMode(rs.getString("mode"));
			tDetails.setReceiveParsonStop(rs.getString("receiveParsonStop"));
			tDetails.setReceivePersonSchool(rs.getString("receivePersonSchool"));
			tDetails.setRootName(rs.getString("rootName"));
			tDetails.setScholarNo(rs.getString("scholarNo"));
			tDetails.setStop(rs.getString("stop"));
			
			StudentInfo info = new StudentInfo();
			info.setGuradian(guradian);
			info.setParents(parents);
			info.setStudent(student);
			info.settDetails(tDetails);
			info.setStudentDocs(studentDocs);
			allSelStudent.add(info);
		}
		return allSelStudent;
		
	}
	public Map<String,Object> getAdminDashBoardData(String franchise){

		Map<String,Object> adminData = new HashMap<String,Object>();
		Connection conn=null;
		PreparedStatement todaysStmt = null,toalstmt=null,maleStmt = null, femaleStmt = null, genStmt = null , obcStmt = null , scStmt = null , stStmt = null ;
		try {
			conn = DBUtil.getConnection(dbType);
			toalstmt = conn.prepareStatement("select count(s.scholarNo) from studentInfo s");
			Integer totalStudent = 0;
			ResultSet rs = toalstmt.executeQuery();
			while(rs.next()) {
				totalStudent = rs.getInt(1);
			}
			adminData.put("TOTAL_STUDENT",totalStudent);
			
			//Get total male students in school
			maleStmt = conn.prepareStatement("select count(1) from studentInfo s where s.gender = ?");
			maleStmt.setString(1, "Male");
			ResultSet maleRs = maleStmt.executeQuery();
			Integer maleStudent = 0;
			while(maleRs.next()) {
				maleStudent = maleRs.getInt(1);
			}
			adminData.put("MALE_STUDENT",maleStudent);
			
			//Get total male students in school
			femaleStmt = conn.prepareStatement("select count(1) from studentInfo s where s.gender = ?");
			femaleStmt.setString(1, "Female");
			ResultSet femaleRs = femaleStmt.executeQuery();
			Integer femaleStudent = 0;
			while(femaleRs.next()) {
				femaleStudent = femaleRs.getInt(1);
			}
			adminData.put("FEMALE_STUDENT",femaleStudent);
			
			//Get total General students in school
			genStmt = conn.prepareStatement("select count(1) from studentInfo s where s.category = ?");
			genStmt.setString(1, "General");
			ResultSet genRs = genStmt.executeQuery();
			Integer generalStudent = 0;
			while(genRs.next()) {
				generalStudent = genRs.getInt(1);
			}
			adminData.put("GENERAL_STUDENT",generalStudent);
			
			//Get total OBC students in school
			obcStmt = conn.prepareStatement("select count(1) from studentInfo s where s.category = ?");
			obcStmt.setString(1, "OBC");
			ResultSet obcRs = obcStmt.executeQuery();
			Integer obcStudent = 0;
			while(obcRs.next()) {
				obcStudent = obcRs.getInt(1);
			}
			adminData.put("OBC_STUDENT",obcStudent);
			
			//Get total ST students in school
			stStmt = conn.prepareStatement("select count(1) from studentInfo s where s.category = ?");
			stStmt.setString(1, "ST");
			ResultSet stRs = stStmt.executeQuery();
			Integer stStudent = 0;
			while(stRs.next()) {
				stStudent = stRs.getInt(1);
			}
			adminData.put("ST_STUDENT",stStudent);
			
			//Get total SC students in school
			scStmt = conn.prepareStatement("select count(1) from studentInfo s where s.category = ?");
			scStmt.setString(1, "SC");
			ResultSet scRs = scStmt.executeQuery();
			Integer scStudent = 0;
			while(scRs.next()) {
				scStudent = scRs.getInt(1);
			}
			adminData.put("SC_STUDENT",scStudent);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				toalstmt.close();
				maleStmt .close(); 
				femaleStmt.close();
				genStmt.close(); 
				obcStmt.close();
				scStmt.close();
				stStmt.close();
				if(null != conn)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return adminData;
	}
	
	public List<StudentInfo> getTodaysAdmiStudent()  {
		Connection conn = null;
		PreparedStatement todaysStmt = null;
		List<StudentInfo> todayAdmitStuList = null;
		try {
			conn = DBUtil.getConnection(dbType);
			//Get all students who admitted in todays date
			todaysStmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + " where DATE(s.createdDate) = CURDATE() order by s.id desc;");
			//todaysStmt.setString(1, scholarNo);
			ResultSet todayrs = todaysStmt.executeQuery();
			todayAdmitStuList = getStudentInfo(todayrs);			
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				
				todaysStmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return todayAdmitStuList;
	}
	
	public List<StudentInfo> getStudentByClass(String sClass)  {
		Connection conn = null;
		PreparedStatement classStmt = null;
		List<StudentInfo> classStuList = null;
		try {
			conn = DBUtil.getConnection(dbType);
			//Get all students who admitted in todays date
			classStmt = conn.prepareStatement(StudentQueryUtil.getAllStudentQuery + " where s.admissionClass = ? order by s.id desc;");
			classStmt.setString(1, sClass);
			ResultSet todayrs = classStmt.executeQuery();
			classStuList = getStudentInfo(todayrs);			
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				
				classStmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return classStuList;
	}
	
	public Map<String,Map<String, Integer>> getClassSectionCount()  {
		Connection conn = null;
		PreparedStatement classStmt = null ,toalstmt = null;
		Map<String, Integer> preNursery = new HashMap<String,Integer>();
		Map<String, Integer> nursery = new HashMap<String,Integer>();
		Map<String, Integer> kg1 = new HashMap<String,Integer>();
		Map<String, Integer> kg2 = new HashMap<String,Integer>();
		Map<String,Integer> totalStu = new HashMap<String,Integer>();
		Map<String, Map<String,Integer>> allClassSecMap = new HashMap<>();
		try {
			conn = DBUtil.getConnection(dbType);
			//Get all students who admitted in todays date
			classStmt = conn.prepareStatement(StudentQueryUtil.getClassSectoin);
			ResultSet rs = classStmt.executeQuery();
			while(rs.next()){
				String sClass = rs.getString("admissionClass");
				if("Pre-Nursery".equals(sClass)){
					if(null != preNursery.get(rs.getString("admissionSection")) ){
						preNursery.put(rs.getString("admissionSection"), rs.getInt("count")+preNursery.get(rs.getString("admissionSection")));
					}else{
						preNursery.put(rs.getString("admissionSection"),rs.getInt("count"));
					}
				}else if("Nursery".equals(sClass)){
					if(null != nursery.get(rs.getString("admissionSection")) ){
						nursery.put(rs.getString("admissionSection"), rs.getInt("count")+preNursery.get(rs.getString("admissionSection")));
					}else{
						nursery.put(rs.getString("admissionSection"),rs.getInt("count"));
					}
				}else if("K.G.I".equals(sClass)){
					if(null != kg1.get(rs.getString("admissionSection")) ){
						kg1.put(rs.getString("admissionSection"), rs.getInt("count")+preNursery.get(rs.getString("admissionSection")));
					}else{
						kg1.put(rs.getString("admissionSection"),rs.getInt("count"));
					}
				}else if("K.G.II".equals(sClass)){
					if(null != kg2.get(rs.getString("admissionSection")) ){
						kg2.put(rs.getString("admissionSection"), rs.getInt("count")+preNursery.get(rs.getString("admissionSection")));
					}else{
						kg2.put(rs.getString("admissionSection"),rs.getInt("count"));
					}
				}
			}
			
			toalstmt = conn.prepareStatement("select count(s.scholarNo) from studentInfo s");
			Integer totalStudent = 0;
			ResultSet totalrs = toalstmt.executeQuery();
			while(totalrs.next()) {
				totalStudent = totalrs.getInt(1);
			}
			totalStu.put("TOTALSTU",totalStudent);
			
			allClassSecMap.put("TOTAL", totalStu);
			allClassSecMap.put("Pre-Nursery", preNursery);
			allClassSecMap.put("Nursery", nursery);
			allClassSecMap.put("K.G.I", kg1);
			allClassSecMap.put("K.G.II", kg2);

		}catch(Exception e) {
			e.printStackTrace();
		} finally  {
			try {
				
				classStmt.close();
				toalstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return allClassSecMap;
	}
	public int updateStudentSection(String id, String section) {

		String docInsertQuery = "update studentInfo set admissionSection = ? where id =?";
		PreparedStatement stmt=null;
		Connection conn = null;
		int rowUpate  = 0;
		  try {
	        	conn = DBUtil.getConnection(dbType);
	            stmt = conn.prepareStatement(docInsertQuery);
	            stmt.setString(1, section);
	            stmt.setLong(2,Integer.parseInt(id));
	            
	           
	            rowUpate = stmt.executeUpdate();
	            conn.commit();
	        }catch(Exception e) {
	        	try {
					conn.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
	        	e.printStackTrace();
	        }finally  {
		           try {
					stmt.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
		  return rowUpate;
	}
}
