angular.module('taskApp').factory "comments", [
  '$http',
  'projects'
  ($http,projects) ->
    o = {
      projects: projects.projects
    }

    o.destroy = (project,task,comment) ->
      $http.delete("/api/projects/" + project.id + "/comments/" + comment.id)
        .success(
          projectIndex = o.projects.indexOf(project)
          taskIndex = o.projects[projectIndex].tasks.indexOf(task)
          commentIndex = o.projects[projectIndex].tasks[taskIndex].comments.indexOf(comment)
          o.projects[projectIndex].tasks[taskIndex].comments.splice(commentIndex,1)
      )

    o
]