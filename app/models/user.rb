class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :surname, presence: true
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def editor?
    self.role == 'editor'
  end

  def admin?
    self.role == 'admin'
  end

end
