require "rspec/core/rake_task"
require "botspec/tasks/verification_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

Botspec::VerificationTask.new('nibby', 'specs/simple_dialog.yaml') do | botspecs, args |
  puts 'running specs'

end
