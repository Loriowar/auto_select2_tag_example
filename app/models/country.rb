class Country < ActiveRecord::Base

  attr_accessible :name, :population

  has_many :cities

  default_scope ->{order(population: :desc)}

  scope :by_cities, ->(city_ids) do
    if city_ids.present?
      joins(:cities).where(cities: {id: city_ids})
    end
  end

  def to_select2
    {
        id: id,
        text: "#{name} (#{population})"
    }
  end

  def to_select2_alternate
    {
        id: id,
        text: name,
        class_name: "select2-result select2-result-population-level is-#{population_level}",
        selection_class_name: "select2-selection select2-selection-population-level is-#{population_level}",
    }
  end

  private
  def population_level
    num_level = (population / 50000000)
    if num_level > 10
      'hot'
    elsif num_level > 3
      'middle'
    else
      'low'
    end
  end
end