class Request < ActiveRecord::Base
  belongs_to :entity
  belongs_to :company
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
    :message => "Please enter a valid email address."
end
