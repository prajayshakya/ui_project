angular.module('app').directive('titleBar',function(){
    return{
        restrict: "EAC",
        templateUrl: '/views/titleBar.html',
         link: function(ID,TYPE)
                        {
                           
                            scope.title = TYPE;
                        }
    };
    
    
});