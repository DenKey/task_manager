projects = Project.create([{title: "First Project", description: "Very simple project"},{title: "Second Project", description: "Really simple project"}])
tasks = []

["Buy a milk", "Went school","Clear table","Look at window"].each do |task|
  tasks << projects.first.tasks.create({content: task})
end

["Do this quickly","Make this better"].each do |comment|
  tasks.first.comments.create({content: comment})
end
