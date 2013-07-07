class Showing < ActiveRecord::Base
  belongs_to: movie
  has_many: tickets
  attr_accessible :datetime, :movie_id
end
