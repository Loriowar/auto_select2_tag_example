class CountrySearchAdapter < AutoSelect2::Select2SearchAdapter::Base
  self.searchable = Country.order(population: :desc)
  self.searchable_columns = ['name']
  self.limit = 10

  class << self
    def format(item, **)
      {
        id: item.id,
        text: "#{item.name} (#{item.population})",
        top_country: item.population > 2e8
      }
    end
  end
end