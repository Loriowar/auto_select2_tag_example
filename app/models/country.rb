class Country < ActiveRecord::Base

  attr_accessible :name, :population

  has_many :cities

  default_scope ->{order(population: :desc)}

  scope :by_cities, ->(city_ids) do
    if city_ids.present?
      joins(:cities).where(cities: {id: city_ids})
    end
  end

end