class House < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  has_many :users
  has_many :pcrs
end
