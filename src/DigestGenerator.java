import org.apache.catalina.realm.RealmBase;

/**
 * 
 */

/**
 * @author Maurice
 * Use this program to create digested passwords when using the the digest option
 * in the tomcat server.xml JDBCRealm.
 * 
 * Include the tomcat-juli.jar from the Tomcat bin directory in your project classpath.
 */
public class DigestGenerator {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		String algorithm = "SHA";//Available options include SHA, MD2, or MD5
		String encoding = "UTF-8";
		String password = "password";
		//Generate Digested password and display
		System.out.println(RealmBase.Digest(password, algorithm, encoding));
	}

}
