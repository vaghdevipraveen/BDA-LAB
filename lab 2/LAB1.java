import java.sql.*;


public class lab1 {


	public static void main(String[] args)
	{

		Connection con = null;
		PreparedStatement ps = null;

		con = connection.connectDB();


		try {

			String sql = "insert into empdetails values('Vaghdevi Praveen','Vaghu','vaghdevit.cs19@bmsce.ac.in','CSE','9945295555',5)";

			ps = con.prepareStatement(sql);

			ps.execute();
		}


		catch (Exception e) {

			System.out.println(e);
		}
	}
}