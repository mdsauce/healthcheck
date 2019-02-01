require 'rspec/core/rake_task'

ENV['PARALLEL_SPLIT_TEST_PROCESSES'] = '3'

PLATFORMS = %w[windows_10_edge mac_sierra mac_high_sierra windows_10_ff windows_10_chrome]

PLATFORMS.each do |platform|
  desc "Run tests in parallel within suite using #{platform}"
  task platform do
    ENV['PLATFORM'] = platform
    system 'parallel_split_test spec'
  end
end

task :default do
  Rake::Task[PLATFORMS.sample].execute
end
