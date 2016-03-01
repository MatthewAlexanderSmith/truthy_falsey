class Fact < ActiveRecord::Base
  belongs_to :user
  has_many :evidence
end
