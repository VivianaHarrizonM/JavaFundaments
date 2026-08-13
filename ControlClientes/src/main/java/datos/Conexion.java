
package datos;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;


/**
 *
 * @author viviana-harrizon
 */
public class Conexion {
    private static final String JDBC_URL =
            "jdbc:mysql://localhost:3306/control_clientes?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";

    private static final String JDBC_USER = "reto_user";
    private static final String JDBC_PASSWORD="Root#2026mysql";
    private static BasicDataSource dataSource;
    
    public static DataSource getDataSource(){
        if(dataSource == null){
            dataSource = new BasicDataSource();
            dataSource.setUrl(JDBC_URL);
            dataSource.setUsername(JDBC_USER);
            dataSource.setPassword(JDBC_PASSWORD);
            dataSource.setInitialSize(10);
            dataSource.setMaxTotal(50);
        }
        return dataSource;
    }
    
    public static Connection getConnection() throws SQLException{
        return getDataSource().getConnection();
    }

}
