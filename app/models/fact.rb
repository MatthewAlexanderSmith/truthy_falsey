class Fact < ActiveRecord::Base
  belongs_to :user
  has_many :evidences

  accepts_nested_attributes_for :evidences, reject_if: :all_blank, allow_destroy: true
end
