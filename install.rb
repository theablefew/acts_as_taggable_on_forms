require 'rubygems'
require 'ftools'
require File.dirname(__FILE__) + "/../../../config/environment"

this    = File.expand_path(File.dirname(__FILE__))
target  = "acts_as_taggable_on_forms.js" 
dest    = File.join(RAILS_ROOT, "public", "javascripts")

puts "Copying #{target} to #{dest}"
#if File.exists?("#{RAILS_ROOT}/public/javascripts/#{target}")
  File.copy(File.join(this, "lib", "acts_as_taggable_on_forms", target), dest)
#end

puts "Be sure to include #{target} in your views when using acts_as_taggable_on_forms!"
