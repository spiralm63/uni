class Participant < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :course
  belongs_to :student, :class_name => "User"
end
