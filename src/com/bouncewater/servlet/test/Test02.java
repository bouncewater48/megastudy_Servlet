package com.bouncewater.servlet.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test02 extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();
        Date now = new Date();

        SimpleDateFormat format = new SimpleDateFormat("현재 시간은 H시 m분 s초 입니다.");
        String datetimeString = format.format(now);
        out.println(datetimeString);
    }

}
