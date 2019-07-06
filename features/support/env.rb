# Require all dependencies
require 'rubygems'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'pry'

# Require page support files
require File.dirname(__FILE__) + '/pages/generic.page.rb'
Dir[File.dirname(__FILE__) + '/pages/*.rb'].each { |f| require f }
Dir[File.dirname(__FILE__) + '/pages/*/*.rb'].each { |f| require f }
