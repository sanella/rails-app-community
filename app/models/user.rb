class User < ActiveRecord::Base
  validates :name, presence: true
  validates :surname, presence: true
  validates :username, presence: true
  validates :email, presence: true
end
