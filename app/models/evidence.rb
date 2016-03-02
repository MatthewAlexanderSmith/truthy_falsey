class Evidence < ActiveRecord::Base
  belongs_to :user
  belongs_to :fact
  has_many :votes


  def upvotes
    self.votes.where(upvote: true).count
  end

  def downvotes
    self.votes.where(upvote: false).count
  end
end
