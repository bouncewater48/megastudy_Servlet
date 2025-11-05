package com.bouncewater.database.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        try{
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            String url = "jdbc:mysql://localhost:3306/bounce_25";
            String username = "root";
            String password = "root";

            Connection connection = DriverManager.getConnection(url, username, password);

            String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10";
//            String query = "SELECT * FROM `real_estate`";
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {

                int realtor_id = resultSet.getInt("realtor_id");
                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");
                int price = resultSet.getInt("price");
                int rent_price = resultSet.getInt("rent_price");

                out.println("매물주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
            }

//            statement.close();

//            query = "DELETE\n" +
//                    "FROM `real_estate`\n" +
//                    "WHERE `address` = '헤라펠리스 101동 5305호'";
//
//            Statement deleteStatement = connection.createStatement();
//
//            int deletedCount = statement.executeUpdate(query);
//
//            deleteStatement.close();

//            query = "INSERT INTO `real_estate`\n" +
//                    "(`realtor_id`, `address`, `area`, `type`, `price`, `rent_price`)\n" +
//                    "VALUE\n" +
//                    "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL);";
//
//            statement = connection.createStatement();
//            int count = statement.executeUpdate(query);
//                        out.println("저장된 행 : " + count);
//            statement.close();

            query = "SELECT `address`, `area`, `type`\n" +
                    "FROM `real_estate`\n" +
                    "ORDER BY `id`\n" +
                    "LIMIT 10;";

            statement = connection.createStatement();

            statement.close();
            connection.close();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
