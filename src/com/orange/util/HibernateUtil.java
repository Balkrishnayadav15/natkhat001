package com.orange.util;
import java.util.Properties;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import com.orange.model.Guardian;
import com.orange.model.Parents;
import com.orange.model.Student;
import com.orange.model.StudentDocs;
import com.orange.model.TransportDetails;
public class HibernateUtil {
	private static SessionFactory sessionFactory;
	private static ServiceRegistry serviceRegistry;
    public static SessionFactory getSessionFactory(String franchise) {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();
                // Hibernate settings equivalent to hibernate.cfg.xml's properties
                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
                if("natkhat001".equals(franchise)){
	                settings.put(Environment.URL, "jdbc:mysql://127.0.0.1:3306/natkhat001");
                }
                settings.put(Environment.USER, "root");
                
                settings.put(Environment.PASS, "");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
                settings.put(Environment.SHOW_SQL, "true");
                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
                settings.put(Environment.HBM2DDL_AUTO, "update");
                configuration.setProperties(settings);
                configuration.addAnnotatedClass(Guardian.class);
                configuration.addAnnotatedClass(Parents.class);
                configuration.addAnnotatedClass(Student.class);
                configuration.addAnnotatedClass(StudentDocs.class);
                configuration.addAnnotatedClass(TransportDetails.class);
                 serviceRegistry = new ServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).buildServiceRegistry();
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sessionFactory;
    }
    
    public static void closeSessionFactory() {
    	if(null != sessionFactory){
    		sessionFactory.close();
    		ServiceRegistryBuilder.destroy(serviceRegistry);
    	}
        //
     }
}
