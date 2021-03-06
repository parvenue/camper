<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAMPER</title>
    <link rel="stylesheet" href="/css/layout.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/modal.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

    <style>
        @media screen and (max-width: 1780px) {
            .second_item:last-child {
                display: none;
            }
        }

        @media screen and (max-width: 1250px) {
            .header_container {
                width: 100%;
                padding: 12vw;
                padding-top: 20px;
                padding-bottom: 0;
                margin-top: 20px;
                display: flex;
                align-items: center;
            }

            .logo img {
                width: 130px;
                height: 30px;
            }

            .tab_menu_container {
                display: none;
                flex-direction: column;
                align-items: center;
                width: 100%;

            }

            .tab_menu_btn {
                width: 100%;
                text-align: center;
            }

            .burgerBar {}

            .burger_menu_container {
                justify-content: end;
                z-index: -1;
                margin-right: 10px;
            }

            .burger_menu {
                background: none;
                border: 0;
                outline: 0;
                cursor: pointer;
                width: 15%;
                height: 40px;
                transition: 0.3s all;
                text-align: center;
                font-size: 25px;
                font-weight: 500;
                color: #fff;
                display: block;
                padding: 5px 0 0 20px;
            }


            .tab_menu_container.active {
                display: flex;
                background-color: black;
                color: white;
            }
        }

        @media screen and (max-width: 950px) {

            .leftItem {
                width: 100%;
                height: 400px;
                margin: 0px;
            }

            .third_item_thumb1 {
                height: 275px;
            }

            .third_txt1 {
                height: 125px;
                width: 100%;
                border-radius: 0px 0px 12px 12px;
                font-weight: bold;
            }

            .rightItem {
                display: none;
            }

            .thirdContainer {
                display: flex;
                padding: 30px 10px 10px 10px;
                height: 400px;
                width: 100%;
            }

            body {
                background-size: 100% 700px;
            }

            header {
                height: 150px;
                width: 100%;
            }

            .first_section {
                margin: 0 12vw 20px 12vw;
            }

            .first_article {
                width: 60%;
                margin-bottom: -50px;
            }

            .article_title {
                font-size: 30px;
                white-space: pre-line;
                color: #ef8f1e;
                font-weight: 500;
            }

            .article_content {
                font-size: 18px;
                font-weight: 300;
                color: #fff;
                margin-top: 20px;
                line-height: 27px;
                overflow: hidden;
            }

            .article_view {
                font-size: 20px;
                font-weight: 400;
                margin-top: 5px;
                overflow: hidden;
            }
            
            
        }
    </style>
</head>

<body>
    <header>
        <nav class="header_container">
            <div class="header_item logo"><a href="/"><img src="" height="47px"></a></div>
            <div class="header_item searchBar">
                <div class="tab_menu_container">
                   <button class="tab_menu_btn" id="stayBtn"> <a href="/search/theme.do" style="color:#fff">????????????</a></button>
                    <button class="tab_menu_btn" id="experienceBtn"><a href="/community/main.do"  style="color:#fff" >????????????</a></button>
                    <button class="tab_menu_btn" id="onlineBtn">????????????</button>
                </div>
            </div>

            <div class="header_item">
                <div class="header_dropdown"><button class="dropBtn"><img class="user_icon" src="/images/1.jpg"
                            height="30px"></button>
                    <div class="dropdown-content hidden"><a id="loginBtn">?????????</a><a id="signupBtn">????????????</a></div>
                </div>
            </div>

            <div class="header_item BurgerBar">
                <div class="burger_menu_container">
                    <a href="#" class="burger_menu"><i class="fas fa-bars"></i></a>
                </div>
            </div>

            <div class="login hidden">
                <div class="modal_overlay"></div>
                <div class="modal_content">
                    <div class="modalTop"><button>&times</button></div>
                    <div class="modalTitle">?????????</div>
                    <form class="loginForm" action="/login" method="post">
                        <table>
                            <tr>
                                <td><input class="modalInput" type="email" placeholder="?????????" name="id" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="password" placeholder="????????????" name="password"
                                        required></td>
                            </tr>
                            <tr>
                                <td><input class="modalSubmit" type="submit" value="?????????"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div class="signup hidden">
                <div class="modal_overlay"></div>
                <div class="modal_content">
                    <div class="modalTop"><button>&times</button></div>
                    <div class="modalTitle">????????????</div>
                    <form class="signupForm" action="/signup" method="post">
                        <table>
                            <tr>
                                <td><input class="modalInput" type="email" placeholder="?????????" name="id" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="password" placeholder="????????????" name="password"
                                        required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="text" placeholder="??????" name="name" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalInput" type="text" placeholder="???????????? ex) 010-0000-0000"
                                        name="phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" required></td>
                            </tr>
                            <tr>
                                <td><input class="modalSubmit" type="submit" value="????????????"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div class="drop_overlay hidden"></div>
        </nav>
    </header>


    <main>
        <section>
            <article class="first_section">
                <article class="first_article">
                    <div class="article_title"> <span>??? ?????? ??????</span></div>
                    <p class="article_content">?????? ??? ?????? ?????? ????????? ?????? ???
                        ????????? ?????? ????????? ?????????
                        ?????? ?????? ???????????? ????????? ???
                        ?????? ?????? ?????? ?????????</p>
                    <p class="article_view"><a href="#">?????? ?????? ????????? ></a></p>
                </article>
            </article>
        </section>
        <section>
            <article class="second_section">
                <article class="second_article">
                    <div class="second_title">???????????? ???????????? ?????? !</div>
                    <article class="second_container">
                        <div class="second_item">
                            <a href="#">
                                <img class="item_thumb" src="/images/camping1.jpeg">
                                <div class="item_txt">
                                    <div class="item_title">?????? ?????????</div>
                                    <div class="item_descript">???????????? ?????????</div>
                                </div>
                            </a>
                        </div>
                        <div class="second_item">
                            <a href="#">
                                <img class="item_thumb" src="/images/camping2.jpeg">
                                <div class="item_txt">
                                    <div class="item_title">?????? ?????????</div>
                                    <div class="item_descript">???????????? ?????????</div>
                                </div>
                            </a>
                        </div>
                        <div class="second_item">
                            <a href="#">
                                <img class="item_thumb" src="/images/camping3.jpeg">
                                <div class="item_txt">
                                    <div class="item_title">?????? ?????????</div>
                                    <div class="item_descript">???????????? ?????????</div>
                                </div>
                            </a>
                        </div>
                    </article>
                </article>
            </article>
            <article class="third_section">
                <article class="third_article">
                    <div class="third_title">???????????? ???????????? ??????</div>
                    <div class="thirdContainer">
                        <div class="leftItem">
                            <a href="#">
                                <img class="third_item_thumb1" src="/images/1.jpg">
                                <div class="third_txt1">
                                    <div class="thirdTitle">???????????????</div>
                                    <div class="third_descript">?????? ??????????????? ????????? ?????? ??????</div>
                                </div>
                            </a>
                        </div>
                        <div class="rightItem">
                            <div class="rightTop">
                                <div class="topleft">
                                    <a href="#">
                                        <img class="third_item_thumb2" src="/images/2.jpg">
                                        <div class="third_txt2">
                                            <div class="thirdTitle2">?????? ??????</div>
                                            <div class="third_descript2">????????? ??????</div>
                                        </div>
                                    </a>
                                </div>
                                <div class="topRight">
                                    <a href="#">
                                        <img class="third_item_thumb2" src="/images/3.jpg">
                                        <div class="third_txt2">
                                            <div class="thirdTitle2">?????? ?????????</div>
                                            <div class="third_descript2">????????? ??????</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="rightBottom">
                                <a href="#">
                                    <img class="third_item_thumb2" src="/images/4.jpg">
                                    <div class="third_txt2">
                                        <div class="thirdTitle2">?????? ?????????</div>
                                        <div class="third_descript2">???????????? ?????????</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </article>
            </article>
        </section>

    </main>
    <footer>
        <div class="footer_container">
            <div class="footer_item">
                <ul>
                    <li> <img src="/images/footerlogo.png"></li>
                </ul>
            </div>
            <div class="footer_item">
                <p class="footer_txt">
                    <span class="footer_title">??????</span> ?????? <span class="footer_title">??????</span> ??????????????? <span
                        class="footer_title">??????</span> ?????? ????????? ????????????<br>
                    <span class="footer_title">?????????????????? ?????????</span> ????????? (admin@gmail.com) <span class="footer_title">?????????
                        ????????????</span> 000-00-00000<br>
                </p>
            </div>
            <p class="copy">&copy;2022 CAMPER all rights reserved.</p>
        </div>
    </footer>

    <script type="module" src="/js/nav.js"></script>
    <script type="module" src="/js/header.js"></script>
</body>

</html>