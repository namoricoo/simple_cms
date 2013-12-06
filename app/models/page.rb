class Page < ActiveRecord::Base
  #How to provide a foreign_key
  #belongs_to :subject, {foreign_key: "subject_id"}
   belongs_to :subject
   has_many :sections
  
end
