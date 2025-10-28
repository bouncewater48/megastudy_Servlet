package com.bouncewater.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String address = request.getParameter("address");
        String card = request.getParameter("card");
        String priceStr = request.getParameter("price");
        int price = Integer.parseInt(priceStr);

        out.println("" +
                "<html>\n" +
                "   <head><title>주문하기</title><head>\n" +
                "      <body>"
        );

        if(!address.contains("서울시")) {
            out.println("<h3>배달 불가 지역입니다.</h3>");
        } else if (card.equals("신한카드")) {
            out.println("<h3>결제 불가 카드입니다.</h3>");
        } else {
            out.println(
//                    "         <h3>주소 : " + address + "</h3>\n" +
//                    "         <h3>결제카드 : " + card + "</h3>\n" +
//                    "         <h3>가격 : " + price + "</h3>");
                    "          <h3>" + address + " 배달 준비중</h3><hr>" +
                    "          결제금액 : " + price + "원");
        }

        out.println("" +
                "      </body>" +
                "</html>"
        );

    }
}
