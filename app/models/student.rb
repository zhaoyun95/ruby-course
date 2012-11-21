class Student < ActiveRecord::Base
  attr_accessible :course, :name
  has_many :urls
end
