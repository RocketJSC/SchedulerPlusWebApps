(function () {
    'use strict';

    var serviceId = 'vScheduleDetailsFactory';

    angular.module('vScheduleDetailsApp').factory(serviceId,
        ['$http', vScheduleDetailsFactory]);

    function vScheduleDetailsFactory($http) {

        function getvScheduleDetails() {
            return $http.get('/api/vScheduleDetail/getbyschedulemaster?id=39');
        }

        var service = {
            getvScheduleDetails: getvScheduleDetails
        };

        return service;
    }
})();