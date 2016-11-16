desc "Open an irb session preloaded with this library"
task :console do
  require 'irb'

  ARGV.clear
  IRB.start
end

require 'rake/testtask'
Rake::TestTask.new do |t|
  puts "Executing Rake Task TEST:"

  t.libs << "test"
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end
