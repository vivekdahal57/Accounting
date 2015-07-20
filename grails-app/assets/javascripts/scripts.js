$(document).ready(function () {
    var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
    if (width >= 1280) {
        desktop();
    } else {
        mobile();
    }
    $("#menuSmall").click(function () {
        $("#menuListSmall").toggle();
    });
    setInterval(function () {
        $("#growlBox").fadeOut('slow');
    }, 3000);

    //for delete with confirmation

    $("#deleteBtn").click(function () {
        popupShow();
    });

    $("#formClose").click(function () {
        popupHide();
    });

    // end of confirmation
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
    $("#leftPane").show();
    $("#navHeading").html("Navigation Panel");
    $("#rightPane").css({width: "80%"});
    $("#fixedShowHideBtn").hide();
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


function popupShow() {
    $("#popupBg").fadeIn();
    $("#popupContainer").fadeIn(600);
}

function popupHide() {
    $("#popupBg").fadeOut(600);
    $("#popupContainer").fadeOut();
}