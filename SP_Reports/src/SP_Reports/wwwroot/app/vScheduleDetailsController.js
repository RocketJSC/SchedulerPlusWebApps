(function () {
    'use strict';

    var controllerId = 'vScheduleDetailsController';

    angular.module('vScheduleDetailsApp').controller(controllerId,
        ['$scope', 'vScheduleDetailsFactory', vScheduleDetailsController]);

    function vScheduleDetailsController($scope, vScheduleDetailsFactory) {
        $scope.vScheduleDetails = [];

        vScheduleDetailsFactory.getvScheduleDetails().success(function (data) {
            $scope.vScheduleDetails = data;
        }).error(function (error) {
            // log errors
        });
    }
})();