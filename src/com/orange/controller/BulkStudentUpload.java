package com.orange.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.google.gson.JsonObject;
import com.orange.dao.AdmissionDao;
import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.TransportDetails;

@WebServlet("/natkhat/admin/bulkUpload")
public class BulkStudentUpload extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static final String TMP_DIR_PATH = "/MyTempFiles";
	private File tmpDir;
	private static final String DESTINATION_DIR_PATH ="/MySavedFiles";
	private File destinationDir;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter to send the JSON response back
		PrintWriter out = response.getWriter();

		//set content type and header attributes
		response.setContentType("text/html");
		response.setHeader("Cache-control", "no-cache, no-store");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "-1");
		String franchise = "natkhat001";//request.getParameter("franchise");
		DiskFileItemFactory  fileItemFactory = new DiskFileItemFactory ();

		//Set the size threshold, above which content will be stored on disk.
		fileItemFactory.setSizeThreshold(10*1024*1024); //10 MB

		//Set the temporary directory to store the uploaded files of size above threshold.
		fileItemFactory.setRepository(tmpDir);

		ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
		JsonObject myObj = new JsonObject();

		String fileName = null;
		String fullName = null;
		File file = null;

		try {

			//Parse the request
			List items = uploadHandler.parseRequest(request);
			Iterator iterator = items.iterator();
			while(iterator.hasNext()) {
				FileItem item = (FileItem) iterator.next();

				//Handle Form Fields
				if(item.isFormField()) {
					if(item.getFieldName().trim().equalsIgnoreCase("filename")){
						fileName = item.getString().trim();
					}
				} 

				//Handle Uploaded files.
				else {
					
					fullName = item.getName().trim();

					//Write file to the ultimate location.
					file = new File(destinationDir,item.getName());
					item.write(file);
				}



			}

			boolean isSave = false;
			String extension = FilenameUtils.getExtension(fullName);
			if(extension.trim().equalsIgnoreCase("xlsx")){
				isSave = processExcelFile(file,franchise);
			}
			else if(extension.trim().equalsIgnoreCase("xls")){
				//process your binary excel file
			}
			if(extension.trim().equalsIgnoreCase("csv")){
				//process your CSV file
			}

		/*	if(isSave){
				myObj.addProperty("success", true);
				myObj.addProperty("message", isSave + " student information saved for file " + fileName);
			}else{
				myObj.addProperty("success", false);
				myObj.addProperty("message", isSave + " student information not saved for file " + fileName);
			}
			out.println(myObj.toString());*/
			

		}
		catch(FileUploadException ex) {
			log("Error encountered while parsing the request",ex);
			myObj.addProperty("success", false);
			
		} catch(Exception ex) {
			log("Error encountered while uploading file",ex);
			myObj.addProperty("success", false);
			

		}
		String adminJsp = "/natkhat/admin/getStudent?franchise=natkhat001&upload=bulk";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(adminJsp);
		dispatcher.include(request,response);

	}
	private boolean processExcelFile(File file, String franchise){

		boolean isSave = false;
		List<Student> studentList = new ArrayList<Student>();
		List<Parents> parentsList = new ArrayList<Parents>();
		List<StudentDocs> studentDocsList = new ArrayList<StudentDocs>();
		List<Guardian> guardianList = new ArrayList<Guardian>();
		List<TransportDetails> transportList = new ArrayList<TransportDetails>();
	
		try{
			// Creating Input Stream 
			FileInputStream myInput = new FileInputStream(file);

			// Create a workbook using the File System 
			XSSFWorkbook myWorkBook = new XSSFWorkbook(myInput);

			// Get the first sheet from workbook 
			XSSFSheet mySheet = myWorkBook.getSheetAt(0);

			/** We now need something to iterate through the cells.**/
			Iterator<Row> rowIter = mySheet.rowIterator();
			int rowCount = 0; 
			while(rowIter.hasNext()){
				
				Student student = new Student();
				Parents parents = new Parents();
				StudentDocs studentDocs = new StudentDocs();
				Guardian guradian = new Guardian();
				TransportDetails tDetails = new TransportDetails();
				
				XSSFRow myRow = (XSSFRow) rowIter.next();
				Iterator<Cell> cellIter = myRow.cellIterator();
				while(cellIter.hasNext()){

					XSSFCell myCell = (XSSFCell) cellIter.next();
					DataFormatter formatter = new DataFormatter();
					//get cell index
					int index =  myCell.getColumnIndex();
					String value = "";
					Date dateValue = null ;
					 //get cell value
                    switch (myCell.getCellType()) {
                    case NUMERIC :
                    	if (HSSFDateUtil.isCellDateFormatted(myCell)) {
                    		dateValue = myCell.getDateCellValue();
                    	}else{
                    		value = new Integer((int)myCell.getNumericCellValue()).toString();
                    	}
                    	
                    	
                        break;
                    case STRING:   
                    	value =  myCell.getStringCellValue();
                        break;
                    default:   
                    	value = myCell.getRawValue();
                        break;   
                    }
                   
					if(index == 0){
						student.setScholarNo(value);
						student.setCreatedDate(new Date());
						parents.setScholarNo(value);
						studentDocs.setScholarNo(value);
						guradian.setScholarNo(value);
						tDetails.setScholarNo(value);
					}
					if(index == 1){
						student.setName(value);					
					}
					if(index == 2){
						
						student.setDob(dateValue);
					}
					if(index == 3){
						student.setDobWords(value);
					}
					if(index == 4){
						student.setGender(value);
					}
					if(index == 5){
						student.setNationality(value);
					}
					if(index == 6){
						student.setReligion(value);
					}
					if(index == 7){
						student.setCaste(value);
					}
					if(index == 8){
						student.setCategory(value);
					}
					if(index == 9){
						student.setBloodGroup(value);
					}
					if(index == 10){
						student.setMotherTounge(value);
					}
					
					if(index == 11){
						student.setAdharNo(value);
					}
					if(index == 12){
						student.setSssmiNo(value);
					}
					if(index == 13){
						student.setBankAccNo(value);
					}
					if(index == 14){
						student.setIfscCode(value);
					}
					if(index == 15){
						student.setBankName(value);
					}
					if(index == 16){
						student.setLastSchoolName(value);
					}
					if(index == 17){
						student.setLastClassAdmission(value);
					}
					if(index == 18){
						student.setLastSessionAdmission(value);
					}
					if(index == 19){
						student.setLastSessionLeave(value);
					}
					if(index == 20){
						student.setLastStudyMedium(value);
					}
					
					if(index == 21){
						student.setPassedClass(value);
					}
					if(index == 22){
						student.setPercentage(value);
					}
					if(index == 23){
						student.setCurrentSchoolName(value);
					}
					if(index == 24){
						student.setAdmissionDate(value);
					}
					if(index == 25){
						student.setAdmissionSession(value);
					}
					if(index == 26){
						student.setAdmissionClass(value);
					}
					if(index == 27){
						student.setStudyMedium(value);
					}
					if(index == 28){
						student.setRte(value);
					}
					if(index == 29){
						parents.setFatherName(value);
					}
					if(index == 30){
						parents.setFatherQualification(value);
					}
					if(index == 31){
						parents.setFatherDesignation(value);
					}
					if(index ==32 ){
						parents.setFatherAge(value);
					}
					if(index == 33){
						parents.setFatherIncome(value);
					}
					if(index == 34){
						parents.setFatherAdharNo(value);
					}
					if(index == 35){
						parents.setFamilysssmid(value);
					}
					if(index == 36){
						parents.setFatherMobNo(value);
					}
					
					if(index == 37){
						parents.setFatherAccNo(value);
					}
					if(index == 38){
						parents.setFatherIfscCode(value);
					}
					if(index ==39 ){
						parents.setFatherBankName(value);
					}
					if(index ==40 ){
						parents.setMotherName(value);
					}
					
					if(index == 41){
						parents.setMotherQualification(value);
					}
					if(index == 42){
						parents.setMotherDesignation(value);
					}
					if(index == 43){
						parents.setMotherAge(value);
					}
					if(index == 44){
						parents.setMontherIncome(value);
					}
					
					if(index == 45){
						parents.setMotherAdharNo(value);
					}
					if(index == 46){
						parents.setMotherMobNo(value);
					}
					if(index == 47){
						parents.setMotherAccNo(value);
					}
					if(index == 48){
						parents.setMotherIfscCode(value);
					}
					
					if(index == 49){
						parents.setMotherBankName(value);
					}
					if(index == 50){
						guradian.setGuardianName(value);
					}
					if(index == 51){
						guradian.setGuardianMobileNo(value);
					}
					if(index == 52){
						guradian.setGuardianresAddress(value);
					}
					if(index == 53){
						guradian.setGuardianAdharNo(value);
					}
					if(index == 54){
						tDetails.setMode(value);
					}
					if(index == 55){
						tDetails.setRootName(value);
					}
					
					if(index == 56){
						tDetails.setStop(value);
					}
					if(index == 57){
						tDetails.setReceiveParsonStop(value);
					}
					if(index == 58){
						tDetails.setReceivePersonSchool(value);
					}
					if(index == 59){
						student.setAdmissionSection(value);
					}
				}
				
				if(rowCount>0){
					studentList.add(student);
					parentsList.add(parents);
					studentDocsList.add(studentDocs);
					guardianList.add(guradian);
					transportList.add(tDetails); 
				}
				rowCount++;
			}
			
			//Save all data to database
			AdmissionDao dao = new AdmissionDao(franchise);
			isSave = dao.saveStudentInfoList(studentList, parentsList, studentDocsList, guardianList, transportList);
			
		}
		catch (Exception e){
			e.printStackTrace(); 
		}

		return isSave;

	}
}
