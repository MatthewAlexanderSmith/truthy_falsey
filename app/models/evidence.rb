class Evidence < ActiveRecord::Base
  belongs_to :user
  belongs_to :fact
  has_many :votes
end
