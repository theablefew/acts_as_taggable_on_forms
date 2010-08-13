this = File.expand_path(File.dirname(__FILE__))

require "#{this}/acts_as_taggable_on_forms/form_extensions"
#require "#{this}/acts_as_taggable_on_forms/_tag_field.html.erb"

ActionView::Helpers::FormBuilder.send(:include, ActsAsTaggableOnForms::FormExtensions)
