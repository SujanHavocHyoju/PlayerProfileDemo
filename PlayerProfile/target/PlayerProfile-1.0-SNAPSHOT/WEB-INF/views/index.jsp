<%@include file="header.jsp" %>
<title>Player Profile</title>
</head>
<body  onload="myFunction()" style="border-box; background-image:url('${SITE_URL}/static/background.jpg'); background-repeat: no-repeat; background-size:cover;" >
    <ul class="nav nav-tabs">
        <li>
            <a class="navbar-brand" href="${SITE_URL}" title="Home"><img alt="PlayerProfile" width="55" height="35" src="${SITE_URL}/static/banner.png"></a>
        </li>
        <li role="presentation" class="active"><a href="${SITE_URL}">Home</a></li>
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
    <h1 style="text-align:center">Welcome to Player Profiles!</h1>
    <div class="container">
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Image</th>
                <th>Name</th>
                <th>Age</th>
                <th>Height</th>
                <th>Weight</th>
                <th>Position</th>
                <th>Foot</th>
                <th>Nationality</th>
                <th>Club</th>
                <th>Action</th>

            </tr>
            <c:forEach var="play" items="${players}">
                <tr>
                    <td>${play.id}</td>
                    <td><img alt="imp" width="60" height="60" src="${SITE_URL}/static/player_img/${play.image}"></td>
                    <td>${play.playerName}</td>
                    <td>${play.age}</td>
                    <td>${play.height}</td>
                    <td>${play.weight}</td>
                    <td class="position" style="text-align: center"><b>${play.position}</b></td>
                    <td>${play.foot}</td>
                    <td>${play.nationality}</td>
                    <td>${play.club}</td>
                    <td>
                        <a href="${SITE_URL}/attribute/${play.attributeId}" class="btn btn-success">
                            <span class="glyphicon glyphicon-eye-open"> Attributes</span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>


    <script>
        $(document).ready(function() {
            $('.position:contains("CAM"),.position:contains("LM"),.position:contains("CM"),.position:contains("CDM"),.position:contains("RM")').css('background', 'GreenYellow');  
             $('.position:contains("ST"),.position:contains("LW"),.position:contains("LF"),.position:contains("CF"),.position:contains("RF"),.position:contains("RW")').css('background', 'RoyalBlue');   
             $('.position:contains("GK")').css('background', 'orange'); 
            $('.position:contains("LWB"),.position:contains("LB"),.position:contains("CB"),.position:contains("RB"),.position:contains("RWB")').css('background', 'yellow'); 
        });
    </script>
    <%@include file="footer.jsp" %>
