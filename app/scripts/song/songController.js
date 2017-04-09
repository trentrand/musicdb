'use strict';

angular.module('app').controller('songController', ['songService', '$q',
    function(songService, $q) {
        var vm = this;

        // Load initial data
        getAllSongs();

        //----------------------
        // Database Functions
        //----------------------

        function getAllSongs() {
            songService.getSong().then(function (results) {
                // Once results are fetched, this .then() gets called
                vm.rows = results;
                vm.columnHeaders = Object.keys(vm.rows[0])
            });
        }

        function selectSong(song, index) {
            vm.selected = angular.isNumber(song) ? vm.song[song] : song;
            vm.selectedIndex = angular.isNumber(song) ? song: index;
        }

        function deleteSong($event) {
        }

        function saveSong($event) {
            if (vm.selected != null && vm.selected.songID != null) {
                songService.update(vm.selected).then(function (affectedRows) {
                });
            }
            else {
                //vm.selected.songID = new Date().getSeconds();
                songService.create(vm.selected).then(function (affectedRows) {
                });
            }
        }

        function createSong() {
            vm.selected = {};
            vm.selectedIndex = null;
        }

        function filterSong() {
            if (vm.filterText == null || vm.filterText == "") {
                vm.getAllSongs();
            }
            else {
                songService.getByName(vm.filterText).then(function (song) {
                    vm.song = [].concat(song);
                    vm.selected = song[0];
                });
            }
        }
    }
]);
