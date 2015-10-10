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
    $("#logoImg").attr('width', '100');
    $("#logoImg").attr('height', '30');
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


function popupShow(url) {
    $("#popupBg").fadeIn();
    $("#popupContainer").fadeIn(600);
    loadList(url);
}

function popupHide() {
    $("#popupBg").fadeOut(600);
    $("#popupContainer").fadeOut();
}


function loadList(url) {
    $("#panelBody").html($("#loading").show());
    $.ajax({
        url: url,
        type: "get",
        cache: false,
        complete: function () {
            $("#loading").hide();
        },
        success: function (response) {
            $("#panelBody").html(response);
        },
        failure: function (response) {
            console.log("failure " + response);
        }
    });
}

function showGrowl(msg) {
    $("#message").html(msg);
    $("#growlBox1").fadeIn();
    setInterval(function () {
        hideGrowl();
    }, 3000);
}

function hideGrowl() {
    $("#growlBox1").fadeOut();
}