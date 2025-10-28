package com.bouncewater.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        Date now = new Date();

        SimpleDateFormat format = new SimpleDateFormat("기사 입력시간 : yyyy/MM/dd HH:mm:ss");
        String formattedDate = format.format(now);

        out.println("" +
                    "<html>\n"  +
                    "   <head><title>[단독]고양이가 야옹해 기사</title></head>\n" +
                    "      <body>\n" +
                    "       <h2>[단독]고양이가 야옹해 기사</h2>" +
                            formattedDate + "\n" +
                    "       <hr>\n" +
                    "    <p>끝\n" +
                    "      </body>\n" +
                    "</html>");

    }


}
