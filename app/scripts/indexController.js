'use strict';

angular.module('app').controller('IndexController', ['$scope', '$location',
    function($scope, $location) {
        var vm = this;

        // Default index is All Music, as defined in router .otherwise()
        vm.currentIndex = 'Library-Default'

        $scope.isActive = function (viewLocation) {
            return viewLocation == vm.currentIndex
        };

        vm.showIndex = function(query) {
            vm.currentIndex = query.substring(0, query.length - 4);
            $location.path('/results/' + query);
        }
    }
]);
