$(document).ready(function () {
    DetectPhone();
    setFooter();
    $("#downloadLink").click(function () {
        $("#downloadOptions").animate({width: 'show', direction: 'right'}, 500, function () {
            console.log('ok');
            $("#headingFormat").show();
        });
    });

    $("#hideDownloadOption").click(function () {
        $("#headingFormat").hide();
        $("#downloadOptions").animate({width: 'hide', direction: 'left'}, 500, function () {
            console.log('ok');
        });
    });
});

function setFooter() {
    if ($("#cont-wrap").height() <= 514) {
        $('#footer').removeClass("footer").addClass("footer-fixed");
        console.log("Class swapped");
    } else {
        console.log($("#cont-wrap").height());
    }
}

function DetectPhone() {
    var uagent = navigator.userAgent.toLowerCase();
    if (uagent.search("iphone") > -1) {
        redirectMobileView();
    } else if (uagent.search("windows nt") > -1) {
        console.log("Windows PC");
//        redirectMobileView();
    } else if (uagent.search("android") > -1) {
        redirectMobileView();
    } else {
        console.log(uagent);
    }
}

function redirectMobileView() {
    var $head = $("head");
    var $headlinklast = $head.find("link[rel='stylesheet']:last");
    var linkElement = "<link type='text/css' rel='stylesheet' href='css/mobile-support.css' />";
    if ($headlinklast.length) {
        $headlinklast.after(linkElement);
    }
    else {
        $head.append(linkElement);
    }
//    if (/mobile/.test(window.location.href)) {
//        console.log("Showing mobile view");
//    } else {
//        console.log("Mobile Phone detected...");
//        console.log("Redirecting to mobile view...");
//        window.location.replace("mobile");
//    }
}

