<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: A1-19
  Date: 2025-11-03
  Time: 오후 6:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>종합문제2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

    <%
        Map<String, Object> artistInfo = new HashMap<>();
        artistInfo.put("name", "아이유");
        artistInfo.put("debute", 2008);
        artistInfo.put("agency", "EDAM엔터테인먼트");
        artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

        List<Map<String, Object>> musicList = new ArrayList<>();

        Map<String, Object> musicInfo = new HashMap<>();
        musicInfo.put("id", 1);
        musicInfo.put("title", "팔레트");
        musicInfo.put("album", "Palette");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
        musicInfo.put("time", 217);
        musicInfo.put("composer", "아이유");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 2);
        musicInfo.put("title", "좋은날");
        musicInfo.put("album", "Real");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
        musicInfo.put("time", 233);
        musicInfo.put("composer", "이민수");
        musicInfo.put("lyricist", "김이나");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 3);
        musicInfo.put("title", "밤편지");
        musicInfo.put("album", "palette");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
        musicInfo.put("time", 253);
        musicInfo.put("composer", "제휘,김희원");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 4);
        musicInfo.put("title", "삐삐");
        musicInfo.put("album", "삐삐");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
        musicInfo.put("time", 194);
        musicInfo.put("composer", "이종훈");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 5);
        musicInfo.put("title", "스물셋");
        musicInfo.put("album", "CHAT-SHIRE");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
        musicInfo.put("time", 194);
        musicInfo.put("composer", "아이유,이종훈,이채규");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

        musicInfo = new HashMap<>();
        musicInfo.put("id", 6);
        musicInfo.put("title", "Blueming");
        musicInfo.put("album", "Love poem");
        musicInfo.put("singer", "아이유");
        musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
        musicInfo.put("time", 217);
        musicInfo.put("composer", "아이유,이종훈,이채규");
        musicInfo.put("lyricist", "아이유");
        musicList.add(musicInfo);

    %>

    <div id="wrap" class="container d-flex">
        <div class="header">Melong</div>



    </div>

</body>
</html>
