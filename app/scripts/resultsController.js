'use strict';

angular.module('app').controller('ResultsController', ['databaseService', '$q', '$scope', '$rootScope', '$routeParams', '$location',
    function(databaseService, $q, $scope, $rootScope, $routeParams, $location) {
        var vm = this;
        $scope.location = $location;

        function loadIndex() {
            // Load appropriate view results
            if ($routeParams.searchParam) {
                queryWithParameter($routeParams.query, $routeParams.searchParam)
            } else {
                queryIndex($routeParams.query);
            }
        }

        loadIndex();

        //----------------------
        // Database Functions
        //----------------------

        function queryIndex(fileName) {
            databaseService.query(fileName).then(function (results) {
                // Once results are fetched, this .then() gets called
                vm.rows = results;
                vm.columnHeaders = Object.keys(vm.rows[0])
                $rootScope.searchParam = vm.columnHeaders[0];
            });
        }

        // Seach among the current index with the first column as the searchable field
        function queryWithParameter(fileName, parameter) {
            var _fileName = fileName.substring(0, fileName.length - 4) + '-search.sql';
            databaseService.queryParam(_fileName, parameter).then(function (results) {
                // Once results are fetched, this .then() gets called
                vm.rows = results;
                vm.columnHeaders = Object.keys(vm.rows[0])
                $rootScope.searchParam = vm.columnHeaders[0];
            });
        }

        vm.newProduct = {
            product: undefined,
            band: undefined,
            type: undefined,
            genre: undefined,
            yearReleased: undefined
        }

        vm.addProduct = function() {
            var product = vm.newProduct;
            var bandId = 'B' + Math.floor((Math.random() * (99999-10000))+10000);
            var songId = 'S' + Math.floor((Math.random() * (99999-10000))+10000);
            var productId = 'P' + Math.floor((Math.random() * (99999-10000))+10000);

            vm.args1 = {
                bandID: bandId,
                songID: songId
            }
            vm.args2 = {
                bandID: bandId,
                bandName: product.band
            }
            vm.args3 = {
                songID: songId,
                productID: productId,
                TrackNumber: 1,
            }
            vm.args4 = {
                productID: productId,
                productName: product.product,
                productType: product.type,
                productYearReleased: product.yearReleased,
                productGenre: product.genre
            }

            if (vm.newProduct.product != undefined && vm.newProduct.band != undefined && vm.newProduct.type != undefined && vm.newProduct.genre != undefined && vm.newProduct.yearReleased != undefined){
                var _fileName = 'Library-Product-Insert.sql';
                databaseService.queryWithArgs('INSERT INTO `create` SET ?;', vm.args1);
                databaseService.queryWithArgs('INSERT INTO `band` SET ?;', vm.args2);
                databaseService.queryWithArgs('INSERT INTO `appear` SET ?;', vm.args3);
                databaseService.queryWithArgs('INSERT INTO `product` SET ?;', vm.args4);
            }

            // Reload index view to show new result and clear add field
            loadIndex();
            vm.newProduct = undefined;
        }
    }
]);
