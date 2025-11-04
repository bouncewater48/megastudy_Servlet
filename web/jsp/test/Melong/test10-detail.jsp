<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>곡 정보 화면</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
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

    <div id="wrap">
        <header class="d-flex flex-row">
            <div class="logo col-2 d-flex align-items-center">
                <h1 class="text-success">Melong</h1>
            </div>
            <div class="search col-10">
                <div class="input-group-append">
                    <input type="text" class="form-control">
                    <button class="btn btn-success" type="button">검색</button>
                </div>
            </div>
        </header>
        <br>
    <nav class="main-menu">
        <ul class="nav font-weight-bold">
            <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱챠트</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱DJ</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">뮤직어워드</a></li>
        </ul>
    </nav> <br>

        <h3>곡 정보</h3>

        <% for(Map<String, Object> song:musicList) { %>
        <section class="contents">
            <div class="d-flex border border-success p-3">
                <div>
                    <img width="200" alt="앨범 썸네일" src="<%= song.get("thumbnail")%>">
                </div>
                <div>
                    <h1 class="mb-1"><%= song.get("title") %></h1>
                    <div class="artist text-danger font-weight-bold"><%= song.get("singer") %></div>
                    <br>

                    <div class="d-flex text-info">
                        <div class="">앨범</div>
                        <div class=""><%= song.get("album") %></div>
                    </div>
                    <div class="d-flex text-info">
                        <div>재생시간</div>
                        <div><%= song.get("time") %></div>
                    </div>
                    <div class="d-flex text-info">
                        <div>작곡가</div>
                        <div><%= song.get("composer") %></div>
                    </div>
                    <div class="d-flex text-info">
                        <div>작사가</div>
                        <div><%= song.get("lyricist") %></div>
                    </div>
                </div>
            </div> <br>
            <div>
                <h3>가사</h3>
                <hr>
                <div>가사 없음</div>
            </div>
            <% } %>
        </section> <br>

        <footer>
            <hr>
            <div class="text-center p-3">Copyright 2021. melong All Rights Reserved</div>
        </footer>
    </div>

</body>
</html>
