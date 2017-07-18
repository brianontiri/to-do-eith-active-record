 ENV['RACK_ENV'] = 'test'
#require the same files and gems
require("rspec")
  require("pg")
  require("list")
  require("task")

#create a database connection
  # DB = PG.connect({:dbname => "to_do_test"})

#set up RSpec to clean the database between test runs
RSpec.configure do |config|
   config.after(:each) do
     Task.all().each() do |task|
       task.destroy()
     end
   end
 end
 
