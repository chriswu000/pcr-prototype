module HousesHelper

  def current_house
    @current_house = current_user.house
  end
end
