angular.module('app').controller("navCtrl",["$scope", "navService",function($scope, navService) {
    $scope.inventoryTypes="";
    $scope.inventoryTitle="";
    console.log("From controller");
    console.log(navService.inventoryTypes);
   
    
    //this is used because 
    $scope.$watch(function(){
        return navService.inventoryTypes;
            
    },
        function(newval, oldVal){
        if (oldVal !=  newval){
            console.log("from watchlist");
            console.log(newval);
            console.log("New val");
            console.log(oldVal);
            console.log("oldVal");
          
            $scope.inventoryTypes=newval;
        }
    });
       
}]);


