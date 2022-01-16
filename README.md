# Rails using Cloud SQL for MySQL

This sample can be generated by following the associated
[tutorial][https://cloud.google.com/ruby/rails/using-cloudsql] documentation.

# deploy
gcloud app deploy

# migrate
bundle exec rake appengine:exec -- bundle exec rake db:migrate

# model
bin/rails g model Company companyName:text companyProfile:text companyPhilosophy:text mediaReports:text salaryAndBenefits:text
bin/rails g model Job jobTitle:text workContent:text conditionRequirements:text companyBenefits:text salaryRange:text open:boolean company_id:integer

# controller
rails g controller companies index show new edit
rails g controller jobs index show new edit

# migration
rake db:migrate
# dev
rackup --port 8080
rails server
# routes
rails routes