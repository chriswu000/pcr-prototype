class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable, REMOVED :confirmable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :house

  has_one :owned_house, :class_name => 'House', :foreign_key => :owner_id

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :owned_house_attributes

  accepts_nested_attributes_for :owned_house

  after_initialize :build_owned_house_if_missing

  after_create :ensure_user_belongs_to_owned_house
  
  protected
  def build_owned_house_if_missing
    if owned_house.nil?
      self.build_owned_house
    end
  end

  def ensure_user_belongs_to_owned_house
    if !owned_house.nil?
      self.house = owned_house
    end
  end
end
