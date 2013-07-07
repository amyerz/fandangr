class Ticket < ActiveRecord::Base
  belongs_to: user
  belongs_to: showing
  attr_accessible :column, :row, :showing_id, :user_id
end
