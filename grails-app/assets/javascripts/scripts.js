var sortColumnId = null;

$(window).resize(function () {
    setFooter();
    setFooterLogin();
});

$(document).keydown(function (e) {
    if (e.keyCode == 27) {
        confirmClose();
        closeSidebar();
        hideDownloadOption();
    }
});

$(document).ready(function () {
    DetectPhone();
    setFooter();
    console.log("dasIcon Height: " + $("#dashBoardBg").height());
    console.log("cont-wrap Height: " + $("#cont-wrap").height());

    $("#downloadLink").click(function () {
        showDownloadOptions();
    });

    $("#hideDownloadOption").click(function () {
        hideDownloadOption();
    });

    $("#sideBarLink").click(function () {
        showSidebar();
    });

    $("#closeSidebar").click(function () {
        closeSidebar();
    });

    $("#closeGrowl").click(function () {
        hideGrowl();
    });

});

function showDownloadOptions() {
    $("#popupBackground").fadeIn(600, function () {
        setScrollPosition();
        $("#downloadOptions").animate({height: 'show', direction: 'top'}, 600, function () {
            console.log('Choose Format screen loaded.');
        });
    });
}

function hideDownloadOption() {
    $("#downloadOptions").animate({height: 'hide', direction: 'bottom'}, 600, function () {
        console.log('ok');
        $("#popupBackground").fadeOut(600);
        unsetScrollPosition();
    });
}

function showSidebar() {
    $("#popupBackground").fadeIn(600, function () {
        $("#sidebar").animate({width: 'show', direction: 'left'}, 600, function () {
            console.log('Choose Format screen loaded.');
        });
    });
}

function closeSidebar() {
    $("#sidebar").animate({width: 'hide', direction: 'right'}, 600, function () {
        console.log('ok');
        $("#popupBackground").fadeOut(600);
    });
}

function showGrowl() {
    $("#growlPanel").fadeIn(600);
    setInterval(function () {
        hideGrowl();
    }, 3000);
}

function hideGrowl() {
    $("#growlPanel").fadeOut(600);
}

function setFooter() {
    if ($("#cont-wrap").height() <= 514 || $("#dashBoardBg").height() <= 514) {
        if ($("#cont-wrap").height() !== null && $("#dashBoardBg").height() !== null) {
            $('#footer').removeClass("footer").addClass("footer-fixed");
        }
    } else if ($("#cont-wrap").height() > 514 || $("#dashBoardBg").height() > 514) {
        $('#footer').removeClass("footer-fixed").addClass("footer");
        console.log("Class swapped from fixed to normal footer");
    } else {
        console.log("nothing" + $("#cont-wrap").height());
    }
    setFooterAfterAjax();
}

function setFooterLogin() {
    if ($(window).height() >= 428) {
        $('#footer').removeClass("footer").addClass("footer-fixed");
        console.log("Class swapped from normal to fixed footer For login page");
    } else {
        $('#footer').removeClass("footer-fixed").addClass("footer");
        console.log("Class swapped from fixed to normal footer for login page");
    }
}

function setFooterAfterAjax() {
    if ($("#cont-wrap").height() <= 514 && $("#cont-wrap").height() !== null) {
        $('#footer').removeClass("footer").addClass("footer-fixed");
    } else if ($("#cont-wrap").height() > 514) {
        $('#footer').removeClass("footer-fixed").addClass("footer");
    } else {
        console.log("nothing" + $("#cont-wrap").height());
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

function showConfirmBox(title, body, deleteurl, redirecturl) {
    $("#popupBackground").fadeIn();
    $("#confirm").fadeIn(600);
    $("#confirm-title").html(title);
    $("#confirm-body").html(body);
    $("#confirm-yes").click(function () {
        if (deleteurl != null) {
            deleteData(deleteurl, redirecturl);
            deleteurl = null;
            redirecturl = null;
            confirmClose();
        }

    });

}

function confirmClose() {
    $("#popupBackground").fadeOut(600);
    $("#confirm").fadeOut();
}

function deleteData(deleteurl, redirecturl) {
    $.ajax({
        url: deleteurl,
        type: 'post',
        method: 'DELETE',
        cache: false,
        success: function (response) {
            $("#message-area").html(response);
            showGrowl();
            getData(redirecturl);
        },
        failure: function (response) {
            alert(response);
        }
    });

}

function sortData(event, url, id) {
    event.preventDefault();
    if (id !== 0) {
        sortColumnId = id
    }
    getData(url);
}


function getData(url) {
    $("#popupBackground").show();
    $("#loading").show();
    $.ajax({
        url: url,
        type: 'get',
        cache: false,
        complete: function () {
            $("#popupBackground").hide();
            $("#loading").hide();
        },
        success: function (response) {
            $('#dataTable').html(response);
            console.log("sortColumnId: " + sortColumnId);
            setFooterAfterAjax();
            if (sortColumnId !== null) {
                setCaret(url); //might cause infinite loading icon
            } else {
                defaultSort();
                console.log("default called");
            }
        },
        failure: function (response) {
            $("#table-wrap").append('No data recieved from server');
        }
    });
}

function defaultSort() {
    $('th.sortable a').append(" <i class='fa fa-sort'></i>");
}

function setCaret(url) {
    $.urlParam = function (name) {
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(url);
        if (results !== null) {
            return results[1] || 0;
        }

    }

    var order = $.urlParam('order');
    if (order === 'asc') {
        defaultSort();
        var activeClasses = $('#' + sortColumnId + ' i').attr("class");
        $('#' + sortColumnId + ' i').removeClass(activeClasses).addClass("fa fa-caret-up");
    }
    if (order === 'desc') {
        defaultSort();
        var activeClasses = $('#' + sortColumnId + ' i').attr("class");
        $('#' + sortColumnId + ' i').removeClass(activeClasses).addClass("fa fa-caret-down");
    }

}