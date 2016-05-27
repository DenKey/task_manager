angular.module('taskApp').controller 'ProjectsCtrl',[
    '$scope',
    'projects'
    'tasks'
    'comments'
    ($scope,projects,tasks, comments) ->
      $scope.projects = projects.projects

      $scope.destroyProject = (project) ->
        projects.destroy(project)

      $scope.destroyTask = (project, task) ->
        tasks.destroy(project, task)

      $scope.destroyComment = (project, task, comment) ->
        comments.destroy(project,task,comment)
]