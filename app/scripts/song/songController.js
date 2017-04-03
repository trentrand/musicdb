(function () {
    'use strict';
    angular.module('app')
        .controller('songController', ['songService', '$q', '$mdDialog', SongController]);

    function SongController(songService, $q, $mdDialog) {
        var self = this;

        self.selected = null;
        self.song = [];
        self.selectedIndex = 0;
        self.filterText = null;
        self.selectSong = selectSong;
        self.deleteSong = deleteSong;
        self.saveSong = saveSong;
        self.createSong = createSong;
        self.filter = filterSong;

        // Load initial data
        getAllSong();

        //----------------------
        // Internal functions
        //----------------------

        function selectSong(song, index) {
            self.selected = angular.isNumber(song) ? self.song[song] : song;
            self.selectedIndex = angular.isNumber(song) ? song: index;
        }

        function deleteSong($event) {
            var confirm = $mdDialog.confirm()
                                   .title('Are you sure?')
                                   .content('Are you sure want to delete this song?')
                                   .ok('Yes')
                                   .cancel('No')
                                   .targetEvent($event);


            $mdDialog.show(confirm).then(function () {
                songService.destroy(self.selected.songID).then(function (affectedRows) {
                    self.song.splice(self.selectedIndex, 1);
                });
            }, function () { });
        }

        function saveSong($event) {
            if (self.selected != null && self.selected.songID != null) {
                songService.update(self.selected).then(function (affectedRows) {
                    $mdDialog.show(
                        $mdDialog
                            .alert()
                            .clickOutsideToClose(true)
                            .title('Success')
                            .content('Data Updated Successfully!')
                            .ok('Ok')
                            .targetEvent($event)
                    );
                });
            }
            else {
                //self.selected.songID = new Date().getSeconds();
                songService.create(self.selected).then(function (affectedRows) {
                    $mdDialog.show(
                        $mdDialog
                            .alert()
                            .clickOutsideToClose(true)
                            .title('Success')
                            .content('Data Added Successfully!')
                            .ok('Ok')
                            .targetEvent($event)
                    );
                });
            }
        }

        function createSong() {
            self.selected = {};
            self.selectedIndex = null;
        }

        function getAllSong() {
            songService.getSong().then(function (song) {
                self.song = [].concat(song);
                self.selected = song[0];
            });
        }

        function filterSong() {
            if (self.filterText == null || self.filterText == "") {
                getAllSong();
            }
            else {
                songService.getByName(self.filterText).then(function (song) {
                    self.song = [].concat(song);
                    self.selected = song[0];
                });
            }
        }
    }

})();
