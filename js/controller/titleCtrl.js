angular.module('app').controller("titleCtrl",["$scope", "titleService","navService",function($scope, titleService, navService) {
    //alert();
    
    $scope.title = "Welcome to BestBuy of Cubic";
    
    $scope.inventoryTitle="";
    $scope.inventoryType="";
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
    
    $scope.test=function(id, type){
//        alert(id);
//        alert(type);
      
        var itemId = id;
        var itemType = type;
        titleService.currentId = id;
        titleService.currentType = type;
        titleService.getItemList();
        
       $scope.title= type;
        //alert($scope.title);

    }
       
}]);


