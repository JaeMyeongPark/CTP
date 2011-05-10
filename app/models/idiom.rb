class Idiom < ActiveRecord::Base
  attr_accessor :tag_string
  before_save :find_tag

  def find_tag
    if tag_string.present?
      tag = Tag.find_by_tag(tag_string)
  
      if tag.nil?
        tag = Tag.new
        tag.tag = tag_string
      else
        self.tag = tag.id
      end
        
      tag.save
    end
   end
end
