class User < ActiveRecord::Base
<<<<<<< HEAD
=======
  before_save { self.email = email.downcase }
>>>>>>> eb8d8310dce458314ee70f5760db7f66bf8fba25
  validates :name, :presence => true, :length => {maximum: 50}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, :length => {maximum: 50}, :format => {with: VALID_EMAIL_REGEX},
    :uniqueness => {case_sensitive: false}
<<<<<<< HEAD

=======
  has_secure_password
  
  validates :password, length: {minimum: 6}
>>>>>>> eb8d8310dce458314ee70f5760db7f66bf8fba25
end
