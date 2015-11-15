$(document).ready(function () {
    DetectPhone();
    setFooter();
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
    } else if (uagent.search("android") > -1) {
        redirectMobileView();
    } else {
        console.log(uagent);
    }
}

function redirectMobileView() {
    if (/mobile/.test(window.location.href)) {
        console.log("Showing mobile view");
    } else {
        console.log("Mobile Phone detected...");
        console.log("Redirecting to mobile view...");
        window.location.replace("mobile");
    }
}