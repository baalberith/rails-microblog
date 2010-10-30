class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  email_regex = /\A[a-z\d_+.-]+@[a-z\d.-]+\.[a-z]{2,4}\z/i
  
  validates :name, :presence => true,
    :length => { :maximum => 20 }
  validates :email, :presence => true,
    :format => { :with => email_regex },
    :uniqueness => { :case_sensitive => false }
end
