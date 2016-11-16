class Website < ActiveRecord::Base
  belongs_to :anuphat
  validates :url, presence: true
end
