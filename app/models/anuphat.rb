class Anuphat < ActiveRecord::Base
  has_many :websites
  validates :login, presence: true
end
