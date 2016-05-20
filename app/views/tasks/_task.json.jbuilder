json.(task, :id, :content, :done, :deadline, :priority)

json.comments task.comments do |comment|
  json.partial! 'comments/comment', comment: comment
end