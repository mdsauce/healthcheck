require 'rspec/core/rake_task'
require 'faker'

ENV['PARALLEL_SPLIT_TEST_PROCESSES'] = '3'

PLATFORMS = %w[windows_10_edge mac_sierra mac_high_sierra windows_10_ff windows_10_chrome]

PLATFORMS.each do |platform|
  desc "Run tests in parallel within suite using #{platform} as defined in platforms.yml"
  task platform do
    ENV['BUILD_NAME'] = Faker::Creature::Animal.name + " " + Faker::Job.field + " " + Faker::App.semantic_version
    ENV['PLATFORM'] = platform
    suite = ARGV[1] || "spec"
    puts 'running tests in ' + suite
    system "parallel_split_test #{suite}"
  end
end

desc "Run all tests with a random platform"
task :default do
  ENV['BUILD_NAME'] = Faker::Creature::Animal.name + " " + Faker::Job.field + " " + Faker::App.semantic_version
  Rake::Task[PLATFORMS.sample].execute
end

desc "Run all specified tests.  Like $ rake test spec/vdc-us-west."
task :test do
  ENV['BUILD_NAME'] = Faker::Creature::Animal.name + " " + Faker::Job.field + " " + Faker::App.semantic_version
  Rake::Task[PLATFORMS.sample].execute
end
