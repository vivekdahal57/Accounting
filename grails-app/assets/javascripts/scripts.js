$(document).ready(function () {
    var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
//    alert(width);
    if (width >= 1280) {
        desktop();
    } else {
        mobile();
    }
    $("#menuSmall").click(function () {
        $("#menuListSmall").toggle();
    });
});


function mobile() {
    $("#leftPane").hide();
    $("#fixedShowHideBtn").show();
    $("#showHideBtn").click(function () {
        $("#navHeading").css({height: "37px"});
        $("#navHeading").html("");
        $("#rightPane").css({width: "100%"});
        $("#leftPane").animate({width: 'hide'}, 550, function () {
            $("#fixedShowHideBtn").show();
        });
    });
    $("#fixedShowHideBtn").click(function () {
        $("#fixedShowHideBtn").hide();
        $("#navHeading").css({height: "37px"});
        $("#leftPane").animate({width: 'show'}, 550, function () {
            $("#navHeading").html("All Menu");
        });
        $("#rightPane").css({width: "100%"});
    });
}

function desktop() {
    $("#leftPane").hide();
    $("#fixedShowHideBtn").show();
    $("#showHideBtn").click(function () {
        $("#navHeading").css({height: "37px"});
        $("#navHeading").html("");
        $("#rightPane").css({width: "97%"});
        $("#leftPane").animate({width: 'hide'}, 550, function () {
            $("#fixedShowHideBtn").show();
        });
    });
    $("#fixedShowHideBtn").click(function () {
        $("#fixedShowHideBtn").hide();
        $("#navHeading").css({height: "37px"});
        $("#leftPane").animate({width: 'show'}, 550, function () {
            $("#navHeading").html("Navigation Panel");
        });
        $("#rightPane").css({width: "80%"});
    });
}