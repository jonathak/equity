class User < ActiveRecord::Base
  has_many :kings
  has_many :companies, :through => :kings
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
    :message => "Please enter a valid email address."
  
end
