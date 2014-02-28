class Company < ActiveRecord::Base
  
  has_many :accounts
  has_many :expenses
  
  belongs_to :user
  
end
