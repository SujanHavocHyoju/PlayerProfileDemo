
    var ATT;
    var sspd, accln, fin, spow, drib;
    var PASS;
    var cros, spass, lpass;
    var DEF;
    var mark, tack, agg;
    var GK;
    var dive, hand, ref;
    var PHY;
    var str, reac, awar;
    var TECH;
    var bctrl, pos, fkick, head;
    function loadAttribue(){
        sspd = parseInt(document.getElementById('sspd').value);
        accln = parseInt(document.getElementById('accln').value);
        fin = parseInt(document.getElementById('fin').value);
        spow = parseInt(document.getElementById('spow').value);
        head = parseInt(document.getElementById('head').value);
        pos = parseInt(document.getElementById('pos').value);
        bctrl = parseInt(document.getElementById('bctrl').value);
        drib = parseInt(document.getElementById('drib').value);
        reac = parseInt(document.getElementById('reac').value);
        fkick = parseInt(document.getElementById('fkick').value);
        cros = parseInt(document.getElementById('cros').value);
        spass = parseInt(document.getElementById('spass').value);
        lpass = parseInt(document.getElementById('lpass').value);
        mark = parseInt(document.getElementById('mark').value);
        tack = parseInt(document.getElementById('tack').value);
        ref = parseInt(document.getElementById('ref').value);
        dive = parseInt(document.getElementById('dive').value);
        hand = parseInt(document.getElementById('hand').value);
        str = parseInt(document.getElementById('str').value);
        agg = parseInt(document.getElementById('agg').value);
        awar = parseInt(document.getElementById('awar').value);
        ATT=parseInt((sspd+accln+fin+spow+drib)/5);
        PASS=parseInt((cros+spass+lpass)/3);
        DEF=parseInt((mark+tack+agg)/3);
        GK=parseInt((dive+hand+ref)/3);
        PHY=parseInt((str+reac+awar)/3);
        TECH=parseInt((bctrl+pos+fkick+head)/4);
        document.getElementById("resultATT").value = ATT;
        document.getElementById("resultPASS").value = PASS;
        document.getElementById("resultDEF").value = DEF;
        document.getElementById("resultGK").value = GK;
        document.getElementById("resultPHY").value = PHY;
        document.getElementById("resultTECH").value = TECH;
                        
    }
    FusionCharts.ready(function () {
        loadAttribue();
        var a=ATT;
        var b=PASS;
        var c=DEF;
        var d=GK;
        var e=PHY;
        var f=TECH;
        var fusioncharts = new FusionCharts({
            type: 'radar',
            renderAt: 'chart-container',
            width: '500',
            height: '350',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Player Attributes Based on FIFA ratings",
                    "numberPreffix": "$",
                    "theme": "fint",
                    "radarfillcolor": "#ffffff",
                },
                "categories": [{
                        "category": [{
                                "label": "Attacking"
                            }, {
                                "label": "Passing"
                            }, {
                                "label": "Defending"
                            }, {
                                "label": "Goalkeeping"
                            }, {
                                "label": "Physical"
                            }, {
                                "label": "Technique"
                            }]
                    }],
                "dataset": [{
                        "data": [{
                                "value": a
                            }, {
                                "value": b
                            }, {
                                "value": c
                            }, {
                                "value": d
                            }, {
                                "value": e
                            },{
                                "value": f
                            }]
                    }]
            }
        }
        );
        fusioncharts.render();
    });


