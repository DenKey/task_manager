angular.module('taskApp').controller 'ProjectsCtrl',[
    '$scope',
    'projects'
    ($scope,projects) ->
      $scope.projects = projects.projects
]