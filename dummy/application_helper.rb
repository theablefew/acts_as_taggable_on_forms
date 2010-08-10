# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def tagger(form, field_name, tag_name, exitsting_tags, tags)
    render :partial => 'helpers/tagger', :locals => {:form => form, :field_name => field_name, :tag_name => tag_name, :existing_tags => exitsting_tags, :tags => tags}
  end
end
