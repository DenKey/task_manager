angular.module('taskApp').factory 'tasks', [
  '$http'
  'projects'
  ($http,projects) ->
    o = {
      projects: projects.projects
    }

    o.destroy = (project, task) ->
      $http.delete('/api/projects/' + project.id + '/tasks/' + task.id)
        .success(
          projectIndex = o.projects.indexOf(project)
          taskIndex = o.projects[projectIndex].tasks.indexOf(task)
          o.projects[projectIndex].tasks.splice(taskIndex,1)
      )

    o
]