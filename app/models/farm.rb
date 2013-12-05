class Farm < ActiveRecord::Base
  belongs_to :user

  def production
    100
  end
end
