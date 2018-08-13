namespace :reset_db do
    rake db:drop
    rake db:migrate
    rake db:seed
end
