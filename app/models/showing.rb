class Showing < ActiveRecord::Base
  has_many :tickets
  belongs_to :movie
  attr_accessible :movie_id, :time
end
