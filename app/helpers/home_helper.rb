module HomeHelper
  def biggest_countries
    Country.order(population: :desc).limit(5)
  end
end