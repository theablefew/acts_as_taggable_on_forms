module ActsAsTaggableOnForms
  module FormExtensions
    def tag_field(field_name, tag_name)
      existing_tags    = self.object.section_list
      additional_tags  = self.object.class.section_counts
      @template.render(
        :file => "#{RAILS_ROOT}/vendor/plugins/acts_as_taggable_on_forms/lib/acts_as_taggable_on_forms/_tag_field.html.erb",
        :locals => {
          :form => self, 
          :field_name => field_name.to_s,
          :tag_name => tag_name.to_s, 
          :existing_tags => existing_tags, 
          :additional_tags => additional_tags
        }
      )
    end 
  end
end
