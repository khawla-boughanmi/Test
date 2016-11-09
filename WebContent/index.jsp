<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app ="myapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Angularjs Rest</title>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
</head>
<body ng-controller= "employeeController">

<script>
  var myapp = angular.module('myapp' , []);
myapp.controller('employeeController',function($scope, $http)
		  {
	 $http.get('http://localhost:8070/springMvcwebservicerestOroora/employee/classes/employee').success(function(response) 	{
		 
		    $scope.employee = response.results;
		  
		} );
	  
	  
		  } );
 
</script>

 <table cellpading="2" cellspacing="2" border="1">
 <tr>
   <th> objectId </th>
   <th> id </th>
   <th> name</th>
   <th> date </th>
   <th> createdAt </th>
   <th> updatedAt</th>
 </tr>
 
 <tr ng-repeat="data in employee">
 <td>{{data.objectId}}<td>
 <td>{{data.id}}<td>
 <td>{{data.name}}<td>
 <td>{{data.createdDate}}<td> 
 <td>{{data.createdAt}}<td>
 <td>{{data.updatedAt}}<td>
 </tr>

 </table>

</body>
</html>