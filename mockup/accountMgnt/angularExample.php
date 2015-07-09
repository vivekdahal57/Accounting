<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Test 1</title>
        <script src="js/angluar.1.3.16.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div ng-app="myApp" ng-controller="myCtrl">

            First Name: <input type="text" ng-model="firstName"><br>
            Last Name: <input type="text" ng-model="lastName"><br>
            <br>
            Full Name: {{firstName + " " + lastName}}

        </div>

        <script>
            var app = angular.module('myApp', []);
            app.controller('myCtrl', function ($scope) {
                $scope.firstName = "John";
                $scope.lastName = "Doe";
            });
        </script> 
    </body>
</html>
