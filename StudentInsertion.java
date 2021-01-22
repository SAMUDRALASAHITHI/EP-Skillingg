package com.klu.insert;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import com.klu.bean.studentbean;
import com.klu.connections.DBUtil;


public class StudentInsertion {
public int StudentInsert(studentbean student) throws SQLException, ClassNotFoundException {
Connection con = DBUtil.DBConnection();
// Statement statement = con.createStatement();
PreparedStatement statement = con.prepareStatement("insert into detail values(?, ?, ?)");
// int i = statement.executeUpdate("insert into student_table values(student.regno, student.name, student.email)");
statement.setInt(1, student.getRegno());
statement.setString(2, student.getName());
statement.setString(3, student.getEmail());
int i = statement.executeUpdate();
return i;
}
}