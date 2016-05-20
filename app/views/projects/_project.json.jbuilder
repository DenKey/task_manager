json.(project, :id,:title,:description)

json.tasks @project.tasks do |task|
  json.partial! 'tasks/task', task: task
end