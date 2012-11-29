class Student < ActiveRecord::Base
  attr_accessible :course, :name
  has_many :urls
  validates :name, :format => {:with => /^(dputnam|cleung63|jhui|tozdemir|tye001|lalmenda|sstandr1|sbabb|bcoffelt|jfontech|jheiser|nhorner|pneto|htillman|trobins|jhuan002|krudzins|dle26|npachec2|yli236|ndjaja)$/, :message => 'You must be registered in CS 132A'}

end
