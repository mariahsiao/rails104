namespace :dev.rake
  desc "Rebuild system"
  task :build => ["tmp:clear", "log:clear", "db:drop", "db:migrate"]
  task :rebuild => [ "dev:build", "db:seed"]
end
