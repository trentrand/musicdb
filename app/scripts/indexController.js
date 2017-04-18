'use strict';

angular.module('app').controller('IndexController', ['$scope', '$rootScope', '$location',
    function($scope, $rootScope, $location) {
        var vm = this;
        
        // Default index is All Music, as defined in router .otherwise()
        vm.currentIndex = 'Library-Default';
        $location.path('Library-Default');

        $scope.isActive = function (viewLocation) {
            return viewLocation == vm.currentIndex
        };

        vm.showSearch = function() {
            return vm.currentIndex.startsWith('Library-', 0)
        }

        vm.showIndex = function(query) {
            vm.currentIndex = query.substring(0, query.length - 4);
            $location.path('/results/' + query);
            $scope.currentSearch = '';
        }

        $scope.$watch('currentSearch', function() {
            if ($scope.currentSearch !== undefined) {
                $location.path('/results/' + vm.currentIndex + '.sql/').search({searchParam: $scope.currentSearch});
            }
        })

        // Watch the rootScope searchParam for changes, then update search bar to reflect searchable field
        $rootScope.$watch('searchParam', function() {
            // Append search field column text
            if ($rootScope.searchParam !== undefined) {
                vm.searchField = 'for ' + $rootScope.searchParam;
            } else vm.searchField = '';
        })

    }
]);
