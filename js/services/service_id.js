angular.module('app').service('titleService',["$http",function($http){
    var dela = this;
    
    $http.get("/service/INVENTORY_TYPE/:ID").then(function(response){
            
                dela.inventoryTypes = response.data;
                console.log(dela.inventoryTitle);
        
    });
}]);