FactoryGirl.define do
factory :question do
  sequence(:title) {|n| "Title #{n}"}
  content "Content"
  inquirer "Inquirer"
 end
end