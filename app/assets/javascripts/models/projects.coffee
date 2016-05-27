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

    o.destroy = (project)->
      $http.delete('/api/projects/' + project.id)
        .success(
          o.projects.splice(o.projects.indexOf(project),1)
      )


    o
]