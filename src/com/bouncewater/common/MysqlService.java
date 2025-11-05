package com.bouncewater.common;

import javax.xml.transform.Result;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {

    // 조회하기
    public List<Map<String, Object>> select(String query) {
        try{
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            // 조회 결과 컬럼 목록
            ResultSetMetaData rsmd = resultSet.getMetaData();

            // 컬럼 개수 얻어오기
            int count = rsmd.getColumnCount();

            List<String> columnList = new ArrayList<>();
            for(int i = 1; i <= count; i++) {
                String name = rsmd.getColumnName(i);
                columnList.add(name);
            }

            List<Map<String, Object>> resultList = new ArrayList<>();
            while(resultSet.next()) {
                // 한 행의 정보를 Map으로 구성
                // 컬럼 이름을 키로 대응

                Map<String, Object> row = new HashMap<>();

                for(String column:columnList) {
                    row.put(column, resultSet.getObject(column));
                }

                resultList.add(row);

            }

            statement.close();
            return resultSet;

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
