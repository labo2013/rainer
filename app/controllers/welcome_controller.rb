class WelcomeController < ApplicationController

  def index
    @user = User.new
    @user.name = "labo2013"
    @user.cereales = 200
    @user.soldiers = []
    @user.farms = [Farm.new]
    @user.save
  end

  def farm_upgrade
    render :index
  end

  def farm_add
    render :index
  end
end
