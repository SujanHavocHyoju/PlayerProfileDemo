<%@include file="../header.jsp" %>
        <title>Player Index</title>
    </head>
    <body style="border-box; background-image:url('${SITE_URL}/static/background.jpg'); background-repeat: no-repeat; background-size:cover;">
        <ul class="nav nav-tabs">
        <li>
            <a class="navbar-brand" href="${SITE_URL}" title="Home"><img alt="PlayerProfile" width="55" height="35" src="${SITE_URL}/static/banner.png"></a>
        </li>
        <li role="presentation"><a href="${SITE_URL}">Home</a></li>
        <li role="presentation" class="active"><a href="${SITE_URL}/player">Player Roster</a></li>
        <li class="pull-right">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </li>
    </ul>
        <h1 style="text-align:center">Player Roster</h1>
        
        
        
    </body>
</html>
