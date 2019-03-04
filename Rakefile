require 'rspec/core/rake_task'
require 'faker'

ENV['PARALLEL_SPLIT_TEST_PROCESSES'] = '3'

PLATFORMS = %w[win_10_chrome_old win_10_edge mac_sierra mac_high_sierra win_10_ff win_10_chrome]
ENV['BUILD_NAME'] = Faker::Creature::Animal.name + " " + Faker::Job.field + " " + Faker::App.semantic_version
puts "starting build: #{ENV['BUILD_NAME']}"

PLATFORMS.each do |platform|
  desc "Run tests in parallel within suite using #{platform} as defined in platforms.yml"
  task platform do
    ENV['PLATFORM'] = platform
    suite = ARGV[1] || "spec"
    puts 'running tests in ' + suite
    system "parallel_split_test #{suite}"
  end
end

desc "Run all tests with a random platform, just use $ rake."
task :default do
  Rake::Task[PLATFORMS.sample].execute
end

desc "Run all specified tests like $ rake test spec/vdc-us-west."
task :test do
  Rake::Task[PLATFORMS.sample].execute
end
