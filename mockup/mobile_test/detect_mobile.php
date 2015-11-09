<!DOCTYPE html>
<html>
    <head>
        <title>Mobile Detection</title>
        <link href="css/bostrap.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>





        <input type="button" OnClick="DetectIphone()" value="Am I an Iphone?" />
    </body>
</html>
<script>
    function DetectIphone() {
        var uagent = navigator.userAgent.toLowerCase();
        console.log(uagent);
        if (uagent.search("iphone") > -1) {
            alert('true');
        } else {
            alert('false');
        }
    }
</script>
