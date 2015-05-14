class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true, email_format: { message: 'not in correct format'}
  validates :role, presence: true
  
  has_secure_password

  enum role: ['default', 'admin'] 
end