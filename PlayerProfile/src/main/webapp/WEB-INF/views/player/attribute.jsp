<%@include file="../header.jsp" %>
<title>Player Profile</title>
<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/fusioncharts.js"></script>
<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js?cacheBust=56"></script>
<script type="text/javascript" src="${SITE_URL}/static/js/myChart.js"></script>
<style>
    
    .red {
        background-color: #ce0606;
    }
    .green {
        background-color: #008000;
    }
    .lime-green{
        background-color: #32CD32;
    }
    .gold{
        background-color: #FFD700;
    }
    .orange {
        background-color: orange;
    }
    td.position {
        text-align: center;
    }

</style>
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
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.sprintSpeed}</td>
                    <td width="10"><input type="hidden" id="sspd" value="${attribute.sprintSpeed}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Acceleration</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.acceleration}</td>
                    <td><input type="hidden" id="accln" value="${attribute.acceleration}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Finishing</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.finishing}</td>
                    <td><input type="hidden" id="fin" value="${attribute.finishing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Shot Power</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.shotPower}</td>
                    <td><input type="hidden" id="spow" value="${attribute.shotPower}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Heading</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.heading}</td>
                    <td><input type="hidden" id="head" value="${attribute.heading}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Postioning</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.positioning}</td>
                    <td><input type="hidden" id="pos" value="${attribute.positioning}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Ball Controll</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.ballControll}</td>
                    <td><input type="hidden" id="bctrl" value="${attribute.ballControll}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Dribbling</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.dribbling}</td>
                    <td><input type="hidden" id="drib" value="${attribute.dribbling}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Reaction</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.reaction}</td>
                    <td><input type="hidden" id="reac" value="${attribute.reaction}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Free Kick</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.freeKick}</td>
                    <td><input type="hidden" id="fkick" value="${attribute.freeKick}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Crossing</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.crossing}</td>
                    <td><input type="hidden" id="cros" value="${attribute.crossing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Short Passing</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.shortPassing}</td>
                    <td><input type="hidden" id="spass" value="${attribute.shortPassing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                <tr>
                    <th>Long Passing</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.longPassing}</td>
                    <td><input type="hidden" id="lpass" value="${attribute.longPassing}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Marking</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.marking}</td>
                    <td><input type="hidden" id="mark" value="${attribute.marking}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Tackling</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.tackling}</td>
                    <td><input type="hidden" id="tack" value="${attribute.tackling}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Reflexes</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.reflexes}</td>
                    <td><input type="hidden" id="ref" value="${attribute.reflexes}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Diving</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.diving}</td>
                    <td><input type="hidden" id="dive" value="${attribute.diving}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Handling</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.handling}</td>
                    <td><input type="hidden" id="hand" value="${attribute.handling}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Strength</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.strength}</td>
                    <td><input type="hidden" id="str" value="${attribute.strength}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Aggression</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.aggression}</td>
                    <td><input type="hidden" id="agg" value="${attribute.aggression}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
                <tr>
                    <th>Awareness</th>
                    <td style="border:1.5px solid #c8c1c1; width: 25px;" class="stats">${attribute.awareness}</td>
                    <td><input type="hidden" id="awar" value="${attribute.awareness}" class="field left" readonly style="background-color: transparent; border:0px; width: 20px;"></td>
                </tr>
            </table>
        </div>

        <div class="col-md-4">
            <h3 style="text-align:center"><u>Average Ratings</u></h3>
            <table>
                <tr>
                    <td><img alt="imp" width="150" height="150" src="${SITE_URL}/static/player_img/${attribute.playerName}.png"/></td>
                    <td>
                        <b>Attacking:</b> <input type="text" id="resultATT" class="rate" readonly  style="border:1.5px solid #c8c1c1; width: 25px;">
                        </br>
                        <b>Passing:</b> <input type="text" id="resultPASS" class="rate" readonly  style="border:1.5px solid #c8c1c1; width: 25px;">
                        </br>
                        <b>Defending:</b> <input type="text" id="resultDEF" class="rate" readonly style="border:1.5px solid #c8c1c1; width: 25px;">
                        </br>
                        <b>Goal Keeping:</b> <input type="text" id="resultGK" class="rate" readonly style="border:1.5px solid #c8c1c1; width: 25px;">
                        </br>
                        <b>Physical:</b> <input type="text" id="resultPHY" class="rate" readonly style="border:1.5px solid #c8c1c1; width: 25px;">
                        </br>
                        <b>Technique:</b> <input type="text" id="resultTECH" class="rate" readonly style="border:1.5px solid #c8c1c1; width: 25px;">
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
                    
<script>
    setTimeout(function() {
    $('.rate').each(function() {
            var $this = $(this);
            var value = $this.val();
            $this.css("text-align","center");

            if(value <50) {
                $this.addClass('red');
            } else if(value < 80) {
                $this.addClass('gold');
            } else if(value < 90) {
                $this.addClass('green');
            } else if(value <=105) {
                $this.addClass('lime-green');
            } else {
                $this.addClass('orange');
            }
    });
    }, 250);
    
    $('.stats').each(function() {
        var $this = $(this);
        var value = $this.text();
        $this.css("text-align","center");

        if(value <50) {
            $this.addClass('red');
        } else if(value < 80) {
            $this.addClass('gold');
        } else if(value < 90) {
            $this.addClass('green');
        } else if(value <=105) {
            $this.addClass('lime-green');
        } else {
            $this.addClass('orange');
        }
    });
</script>
    <%@include file="../footer.jsp" %>
