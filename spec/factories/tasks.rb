FactoryGirl.define do
  factory :task do
    content "MyText"
    done false
    priority 1
    project_id 1
  end
end
