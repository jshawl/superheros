class Superhero < ActiveRecord::Base
  validates :name, :super_power, :image, presence: true
end