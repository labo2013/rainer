class User < ActiveRecord::Base
  has_many :soldiers
  has_many :farms

  attr_accessor :name, :cereales, :name, :soldiers, :farms
end
