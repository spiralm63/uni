class Course < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :instructor, :class_name => "User"

  has_many :participants
  has_many :students, :through => :participants
end
