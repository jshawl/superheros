class Superhero < ActiveRecord::Base
  validates :name, :cape, :super_power, :image, presence: true
end