class User < ApplicationRecord
  has_secure_password
  has_many :comments

  def editor?
    self.role == 'editor' || 'admin'
  end

  def admin?
    self.role == 'admin'
  end
end
