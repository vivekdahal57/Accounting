$(document).ready(function () {
    DetectPhone();
    setFooter();
    $("#downloadLink").click(function () {
        $("#popupBackground").fadeIn(600, function () {
            setScrollPosition();
            $("#downloadOptions").animate({height: 'show', direction: 'top'}, 600, function () {
                console.log('Choose Format screen loaded.');
            });
        });
    });

    $("#hideDownloadOption").click(function () {
        $("#downloadOptions").animate({height: 'hide', direction: 'bottom'}, 600, function () {
            console.log('ok');
            $("#popupBackground").fadeOut(600);
            unsetScrollPosition();
        });
    });

    $("#sideBarLink").click(function () {
        $("#popupBackground").fadeIn(600, function () {
            setScrollPosition();
            $("#sidebar").animate({width: 'show', direction: 'left'}, 600, function () {
                console.log('Choose Format screen loaded.');
            });
        });
    });

    $("#closeSidebar").click(function () {
        $("#sidebar").animate({width: 'hide', direction: 'right'}, 600, function () {
            console.log('ok');
            $("#popupBackground").fadeOut(600);
            unsetScrollPosition();
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
}

function setScrollPosition() {
    var scrollPosition = [
        self.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft, self.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
    ];
    var html = jQuery('html');
    html.data('scroll-position', scrollPosition);
    html.data('previous-overflow', html.css('overflow'));
    html.css('overflow', 'hidden');
    window.scrollTo(scrollPosition[0], scrollPosition[1]);
}

function unsetScrollPosition() {
    var html = jQuery('html');
    var scrollPosition = html.data('scroll-position');
    html.css('overflow', html.data('previous-overflow'));
    window.scrollTo(scrollPosition[0], scrollPosition[1]);
}

