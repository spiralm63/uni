class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :participants, :foreign_key => "student_id"
  has_many :taken_courses, :through => :participants, :source => :course

  has_many :taught_courses, :class_name => "Course", :foreign_key => "instructor_id"

  has_secure_password
end
