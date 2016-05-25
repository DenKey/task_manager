angular.module('taskApp').factory 'projects', [
  '$http'
  ($http) ->
    o = {
      projects: []
    }

    o.all = ->
      $http.get('/api/projects.json')
        .success(
          (projects)->
            angular.copy(projects,o.projects)
      )


    o
]