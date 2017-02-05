<%@include file="../header.jsp" %>
<title>Player Profile</title>
<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/fusioncharts.js"></script>
<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js?cacheBust=56"></script>
<script type="text/javascript" src="${SITE_URL}/static/js/myChart.js"></script>

</head>
<body>
    <ul class="nav nav-tabs">
        <li>
            <a class="navbar-brand" href="${SITE_URL}" title="Home"><img alt="PlayerProfile" width="55" height="35" src="${SITE_URL}/static/banner.png"></a>
        </li>
        <li role="presentation"><a href="${SITE_URL}">Home</a></li>
        <li role="presentation"><a href="${SITE_URL}/player">Player Roster</a></li>
        <li class="pull-right">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </li>
    </ul>
    <h3 style="text-align:center">Player Attributes: ${attribute.playerName}</h3>
    <div class="row">
        <div class="container col-md-1"></div>
        <div class="container col-md-2">

            <table>
                <tr>
                    <th>Sprint Speed</th>
                    <td><input type="text" id="sspd" value="${attribute.sprintSpeed}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Acceleration</th>
                    <td><input type="text" id="accln" value="${attribute.acceleration}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Finishing</th>
                    <td><input type="text" id="fin" value="${attribute.finishing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Shot Power</th>
                    <td><input type="text" id="spow" value="${attribute.shotPower}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Heading</th>
                    <td><input type="text" id="head" value="${attribute.heading}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Postioning</th>
                    <td><input type="text" id="pos" value="${attribute.positioning}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Ball Controll</th>
                    <td><input type="text" id="bctrl" value="${attribute.ballControll}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Dribbling</th>
                    <td><input type="text" id="drib" value="${attribute.dribbling}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Reaction</th>
                    <td><input type="text" id="reac" value="${attribute.reaction}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Free Kick</th>
                    <td><input type="text" id="fkick" value="${attribute.freeKick}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Crossing</th>
                    <td><input type="text" id="cros" value="${attribute.crossing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Short Passing</th>
                    <td><input type="text" id="spass" value="${attribute.shortPassing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                <tr>
                    <th>Long Passing</th>
                    <td><input type="text" id="lpass" value="${attribute.longPassing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Marking</th>
                    <td><input type="text" id="mark" value="${attribute.marking}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Tackling</th>
                    <td><input type="text" id="tack" value="${attribute.tackling}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Reflexes</th>
                    <td><input type="text" id="ref" value="${attribute.reflexes}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Diving</th>
                    <td><input type="text" id="dive" value="${attribute.diving}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Handling</th>
                    <td><input type="text" id="hand" value="${attribute.handling}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Strength</th>
                    <td><input type="text" id="str" value="${attribute.strength}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Aggression</th>
                    <td><input type="text" id="agg" value="${attribute.aggression}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Awareness</th>
                    <td><input type="text" id="awar" value="${attribute.awareness}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
            </table>
        </div>

        <div class="col-md-4">
            <h3 style="text-align:center"><u>Average Ratings</u></h3>
            <table>
                <tr>
                    <td><img alt="imp" width="150" height="150" src="${SITE_URL}/static/player_img/${attribute.playerName}.png"/></td>
                    <td>
                        <b>Attacking:</b> <input type="text" id="resultATT" readonly style="background-color: transparent; border:0px; width: 20px;">
                        </br>
                        <b>Passing:</b> <input type="text" id="resultPASS" readonly style="background-color: transparent; border:0px; width: 20px;">
                        </br>
                        <b>Defending:</b> <input type="text" id="resultDEF" readonly style="background-color: transparent; border:0px; width: 20px;">
                        </br>
                        <b>Goal Keeping:</b> <input type="text" id="resultGK" readonly style="background-color: transparent; border:0px; width: 20px;">
                        </br>
                        <b>Physical:</b> <input type="text" id="resultPHY" readonly style="background-color: transparent; border:0px; width: 20px;">
                        </br>
                        <b>Technique:</b> <input type="text" id="resultTECH" readonly style="background-color: transparent; border:0px; width: 20px;">
                    </td>


                </tr>
            </table>
            <hr>
            <p>
            <u>Average Composition:</u>
            </br>
            ATT- Sprint Speed, Acceleration, Finishing, Shot Power, Dribbling,
            </br>
            PAS - Crossing, Short pass, Long pass
            </br>
            DEF - Marking, Tackling, Aggression,
            </br>
            GK - Diving, Handling, Reflexes
            </br>
            PHY - Strength, Reaction, Awareness
            </br>
            TECH -  Ball Controll, Positioning , Free Kick, Heading 
            </p>
        </div>

        <div id="chart-container">Player Attributes Chart</div>
    </div>
    <%@include file="../footer.jsp" %>
