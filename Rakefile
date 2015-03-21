require 'bundler/gem_tasks'

require File.expand_path('../lib/grape-present_cache/version', __FILE__)

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end

require 'rake'
require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

task default: [:rubocop]
