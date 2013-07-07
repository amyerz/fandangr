class Movie < ActiveRecord::Base
  has_many: showings
  attr_accessible :name
end
