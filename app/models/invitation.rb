# an invitation object is a request that an investor makes to be linked to a company entity
# see the request model for the corallary
class Invitation < ActiveRecord::Base
  belongs_to :company
end
