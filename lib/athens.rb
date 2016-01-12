#!/usr/bin/env ruby
require "./athens/ruby_version_check"

require "thor"

class Athens < Thor
  class_option :verbose, :type => :boolean
  desc "hello NAME", "say hello to NAME"
  def hello(name)
  #  puts "lolol hello work" if verbose
    puts "Hello #{name}"
  end
end

def verbose
  options[:verbose]
end

Athens.start(ARGV)
