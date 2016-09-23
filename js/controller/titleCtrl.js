angular.module('app').controller("titleCtrl",["$scope", "titleService",function($scope, titleService) {
    $scope.inventoryTitle="";
    
    console.log("From controller");
    console.log(navService.inventoryTitle);
   
    
    //this is used because 
    $scope.$watch(function(){
        return titleService.inventoryTitle;
            
    },
        function(newval, oldVal){
        if (oldVal !=  newval){
            console.log("from watchlist");
            console.log(newval);
            console.log("New val");
            console.log(oldVal);
            console.log("oldVal");
          
            $scope.inventoryTitle=newval;
        }
    });
    
    
       
}]);


