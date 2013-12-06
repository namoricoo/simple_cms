class Subject < ActiveRecord::Base
  has_many :pages
  
  scope :visible, where(visible: true)
  scope :invisible, where(visible: false)
  #scope :search, lamda {|query| where(["name LIKE ?", "%#{query}%"])}
end
