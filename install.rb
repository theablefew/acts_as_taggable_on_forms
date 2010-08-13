require 'rubygems'
require 'ftools'
require File.dirname(__FILE__) + "/../../../config/environment"

this    = File.expand_path(File.dirname(__FILE__))
target  = "acts_as_taggable_on_forms.js" 
destination  = File.join(RAILS_ROOT, "public", "javascripts")

if File.exists?("#{RAILS_ROOT}/public/javascripts/#{target}")
  print "#{target} exists in #{destination}. Overwrite?"
  if gets.chomp.strip.downcase == "y"
    File.copy(File.join(this, "lib", "acts_as_taggable_on_forms", target), destination)
  end
else
  File.copy(File.join(this, "lib", "acts_as_taggable_on_forms", target), destination)
end
