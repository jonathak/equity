# an invitation object is a request that an investor makes to be linked to a company entity
# see the request model for the corallary
class Invitation < ActiveRecord::Base
  belongs_to :company
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
    :message => "Please enter a valid email address."
end
