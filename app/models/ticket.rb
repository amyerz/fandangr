class Ticket < ActiveRecord::Base
  attr_accessible :column, :row, :showing_id, :user_id
end
